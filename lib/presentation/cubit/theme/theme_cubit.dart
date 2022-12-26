import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pokedex/common/app_theme.dart';

part 'theme_state.dart';

class ThemeCubit extends HydratedCubit<ThemeState> {
  ThemeCubit() : super(ThemeState.light);

  void update(ThemeState state) => emit(state);

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    final map = {for (var theme in ThemeState.values) theme.name: theme};

    return map[json['theme']];
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) => {'theme': state.name};
}
