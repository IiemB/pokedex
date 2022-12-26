import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pokedex/common/app_theme.dart';
import 'package:pokedex/utils/utils.dart';

part 'theme_state.dart';

class ThemeCubit extends HydratedCubit<ThemeState> {
  ThemeCubit() : super(ThemeState.light);

  final _themes = <ThemeState>[];

  void update() {
    if (_themes.isEmpty) {
      _themes.addAll(ThemeState.values);
    }
    emit(_themes.last);
    _themes.removeLast();
  }

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    final map = {for (var theme in ThemeState.values) theme.name: theme};

    return map[json['theme']];
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) => {'theme': state.name};
}
