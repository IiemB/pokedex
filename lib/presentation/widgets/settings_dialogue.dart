import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/common/common.dart';
import 'package:pokedex/core/core.dart';
import 'package:pokedex/presentation/presentation.dart';
import 'package:pokedex/utils/utils.dart';

typedef GridCount = ({IconData icon, String name, int value});

class SettingsDialogue extends StatefulWidget {
  const SettingsDialogue({super.key});

  @override
  State<SettingsDialogue> createState() => _SettingsDialogueState();
}

class _SettingsDialogueState extends State<SettingsDialogue> {
  final _popUpMenuThemeKey = GlobalKey<PopupMenuButtonState>();
  final _popUpMenuGridKey = GlobalKey<PopupMenuButtonState>();

  static const _gridCount = [
    (name: 'one', value: 1, icon: Icons.square_outlined),
    (name: 'two', value: 2, icon: Icons.grid_view_outlined),
    (name: 'three', value: 3, icon: Icons.grid_on_sharp)
  ];

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Settings'),
          IconButton(
            tooltip: 'Clear Cache',
            onPressed: () => cacheManager.clearCache().whenComplete(
                  () => router.pushAndPopUntil(
                    const SplashRoute(),
                    predicate: (route) => false,
                  ),
                ),
            icon: const Icon(Icons.cleaning_services_rounded),
          )
        ],
      ),
      children: [
        ListTile(
          onTap: () => _popUpMenuThemeKey.currentState?.showButtonMenu(),
          title: const Text('Theme Mode'),
          trailing: BlocBuilder<SettingsCubit, SettingsState>(
            builder: (context, state) => PopupMenuButton<ThemeMode>(
              key: _popUpMenuThemeKey,
              onSelected: (value) =>
                  BlocProvider.of<SettingsCubit>(context).updateTheme(value),
              itemBuilder: (context) => [
                ...ThemeMode.values.map(
                  (e) => PopupMenuItem(
                    value: e,
                    enabled: e != state.themeMode,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text(e.name.titleCase), Icon(e.icon)],
                    ),
                  ),
                )
              ],
              child: Icon(state.themeMode.icon),
            ),
          ),
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: BlocBuilder<SettingsCubit, SettingsState>(
            builder: (context, state) {
              if (state.themeMode == ThemeMode.dark ||
                  MediaQuery.of(context).platformBrightness ==
                      Brightness.dark) {
                return SwitchListTile(
                  value: state.trueDarkTheme,
                  onChanged: (value) => BlocProvider.of<SettingsCubit>(context)
                      .trueDarkThemeToggle(value),
                  title: const Text('True Black'),
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ),
        const Divider(),
        ListTile(
          onTap: () => _popUpMenuGridKey.currentState?.showButtonMenu(),
          title: const Text('Grid Count'),
          trailing: BlocBuilder<SettingsCubit, SettingsState>(
            buildWhen: (previous, current) =>
                previous.gridCount != current.gridCount,
            builder: (context, state) => PopupMenuButton<int>(
              key: _popUpMenuGridKey,
              onSelected: (value) => BlocProvider.of<SettingsCubit>(context)
                  .updateGridCount(value),
              itemBuilder: (context) => [
                ...List<GridCount>.from(_gridCount).map(
                  (e) => PopupMenuItem(
                    value: e.value,
                    enabled: e.value != state.gridCount,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text(e.name.titleCase), Icon(e.icon)],
                    ),
                  ),
                ),
              ],
              child: Icon(
                _gridCount
                        .singleWhereOrNull(
                          (element) => element.value == state.gridCount,
                        )
                        ?.icon ??
                    Icons.hdr_auto,
              ),
            ),
          ),
        ),
        const Divider(),
        BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, state) => SwitchListTile(
            value: state.scrollEffect,
            onChanged: (value) => BlocProvider.of<SettingsCubit>(context)
                .scrollEffectToggle(value),
            title: const Text('Scroll Effect'),
            subtitle: const Text('Experiment'),
          ),
        ),
        const Divider(),
        BlocBuilder<PokemonListBloc, PokemonListState>(
          buildWhen: (previous, current) => current.maybeMap(
            orElse: () => false,
            loaded: (value) => value.nextUrl == null,
            loading: (value) => true,
          ),
          builder: (context, state) => state.maybeMap(
            orElse: () => const SizedBox.shrink(),
            loaded: (value) => Text.rich(
              TextSpan(
                children: [
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Icon(
                      Icons.info,
                      size: 14.sp,
                      color: context.theme.dividerColor,
                    ),
                  ),
                  TextSpan(
                    text: ' ${value.pokemons.length} pokemons loaded',
                  )
                ],
              ),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12.sp,
                color: context.theme.dividerColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}

extension _ThemeModeEx on ThemeMode {
  IconData get icon => switch (this) {
        ThemeMode.system => Icons.brightness_auto,
        ThemeMode.light => Icons.light_mode,
        ThemeMode.dark => Icons.dark_mode,
      };
}
