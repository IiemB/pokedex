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
                      (e) => BlocBuilder<ThemeCubit, ThemeState>(
                        builder: (context, state) => FloatingActionButton(
                          backgroundColor: state == e
                              ? context.theme.colorScheme.primary
                              : null,
                          heroTag: e.name,
                          tooltip: e.themeName,
                          onPressed: () => BlocProvider.of<ThemeCubit>(context)
                              .update(state: e),
                          child: Icon(e.iconData),
                        ),
                      ),
                    )
                    .toList(),
              ),
              BlocBuilder<GridCountCubit, int>(
                builder: (context, state) => Slider(
                  value: state.toDouble(),
                  divisions: 2,
                  min: 1,
                  max: 3,
                  onChanged: (value) => BlocProvider.of<GridCountCubit>(context)
                      .update(value.toInt()),
                ),
              ),
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
              )
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
