import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/common/common.dart';
import 'package:pokedex/core/core.dart';
import 'package:pokedex/presentation/presentation.dart';

class SettingsPage extends StatefulWidget {
  static const routeName = 'settings';
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final _popUpMenuGridKey = GlobalKey<PopupMenuButtonState>();
  final _popUpMenuThemeKey = GlobalKey<PopupMenuButtonState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        leading: IconButton(
          onPressed: router.pop,
          icon: const Icon(Icons.chevron_left_rounded),
        ),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              onTap: () => _popUpMenuThemeKey.currentState?.showButtonMenu(),
              title: const Text('App theme'),
              trailing: BlocBuilder<ThemeCubit, ThemeState>(
                builder: (context, state) => PopupMenuButton<ThemeState>(
                  key: _popUpMenuThemeKey,
                  initialValue: state,
                  onSelected: (value) =>
                      BlocProvider.of<ThemeCubit>(context).update(state: value),
                  itemBuilder: (context) => ThemeState.values
                      .map(
                        (e) => PopupMenuItem<ThemeState>(
                          value: e,
                          child: Text(e.themeName),
                        ),
                      )
                      .toList(),
                  child: Text(state.themeName),
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () => _popUpMenuGridKey.currentState?.showButtonMenu(),
              title: const Text('Grid count'),
              trailing: BlocBuilder<GridCountCubit, int>(
                builder: (context, state) => PopupMenuButton<int>(
                  key: _popUpMenuGridKey,
                  initialValue: state,
                  onSelected: (value) =>
                      BlocProvider.of<GridCountCubit>(context).update(value),
                  itemBuilder: (context) => [1, 2, 3]
                      .map(
                        (e) => PopupMenuItem<int>(
                          value: e,
                          child: Text('$e'),
                        ),
                      )
                      .toList(),
                  child: Text('$state'),
                ),
              ),
            ),
          ),
          OutlinedButton.icon(
            onPressed: () => cacheManager.clearCache().whenComplete(
                  () => router.pushAndPopUntil(
                    const SplashRoute(),
                    predicate: (route) => false,
                  ),
                ),
            icon: const Icon(Icons.clear_all),
            label: const Text('Clear Cache'),
          )
        ]
            .map(
              (e) => Padding(padding: const EdgeInsets.all(8), child: e),
            )
            .toList(),
      ),
    );
  }
}
