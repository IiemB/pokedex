import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'settings_state.dart';

class SettingsCubit extends HydratedCubit<SettingsState> {
  SettingsCubit() : super(const SettingsState());

  void updateTheme(ThemeMode? themeMode) =>
      emit(state.copyWith(themeMode: themeMode));

  void updateGridCount(int? gridCount) =>
      emit(state.copyWith(gridCount: gridCount));

  void trueDarkThemeToggle(bool? trueDarkTheme) =>
      emit(state.copyWith(trueDarkTheme: trueDarkTheme));

  void scrollEffectToggle(bool? scrollEffect) =>
      emit(state.copyWith(scrollEffect: scrollEffect));

  @override
  SettingsState? fromJson(Map<String, dynamic> json) =>
      SettingsState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(SettingsState state) => state.toJson();
}
