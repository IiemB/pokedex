import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/common/common.dart';
import 'package:pokedex/core/core.dart';
import 'package:pokedex/presentation/presentation.dart';
import 'package:pokedex/utils/utils.dart';

class SettingsDialogue extends StatelessWidget {
  const SettingsDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      enableDrag: false,
      onClosing: () {},
      builder: (context) => Container(
        color: context.theme.scaffoldBackgroundColor,
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                width: context.width / 5,
                height: 8,
                decoration: BoxDecoration(
                  color:
                      context.theme.colorScheme.onBackground.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: ThemeState.values
                    .map(
                      (e) => BlocBuilder<SettingsCubit, SettingsState>(
                        buildWhen: (previous, current) =>
                            previous.themeState != current.themeState,
                        builder: (context, state) => FloatingActionButton(
                          backgroundColor: state.themeState == e
                              ? context.theme.colorScheme.primary
                              : null,
                          heroTag: e.name,
                          tooltip: e.themeName,
                          onPressed: () =>
                              BlocProvider.of<SettingsCubit>(context)
                                  .updateTheme(e),
                          child: Icon(e.iconData),
                        ),
                      ),
                    )
                    .toList(),
              ),
              BlocBuilder<SettingsCubit, SettingsState>(
                buildWhen: (previous, current) =>
                    previous.gridCount != current.gridCount,
                builder: (context, state) => Slider(
                  value: state.gridCount.toDouble(),
                  divisions: 2,
                  min: 1,
                  max: 3,
                  onChanged: (value) => BlocProvider.of<SettingsCubit>(context)
                      .updateGridCount(value.toInt()),
                ),
              ),
              // BlocBuilder<SettingsCubit, SettingsState>(
              //   buildWhen: (previous, current) =>
              //       previous.showSearch != current.showSearch,
              //   builder: (context, state) => SwitchListTile(
              //     value: state.showSearch,
              //     title: const Text('Show Search'),
              //     subtitle: const Text('Experimental'),
              //     onChanged:
              //         BlocProvider.of<SettingsCubit>(context).updateShowSearch,
              //   ),
              // ),
              SizedBox(
                width: context.width,
                child: OutlinedButton.icon(
                  onPressed: () => cacheManager.clearCache().whenComplete(
                        () => router.pushAndPopUntil(
                          const SplashRoute(),
                          predicate: (route) => false,
                        ),
                      ),
                  icon: const Icon(Icons.clear_all),
                  label: const Text('Clear Cache'),
                ),
              ),
            ]
                .map(
                  (e) => Padding(padding: const EdgeInsets.all(8.0), child: e),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
