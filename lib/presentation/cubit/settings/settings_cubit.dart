import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pokedex/common/common.dart';
import 'package:pokedex/utils/utils.dart';

part 'settings_state.dart';

class SettingsCubit extends HydratedCubit<SettingsState> {
  SettingsCubit() : super(const SettingsState());

  void updateTheme(ThemeState? themeState) =>
      emit(state.copyWith(themeState: themeState));

  void updateGridCount(int? gridCount) =>
      emit(state.copyWith(gridCount: gridCount));

  void updateShowSearch(bool? showSearch) =>
      emit(state.copyWith(showSearch: showSearch));

  @override
  SettingsState? fromJson(Map<String, dynamic> json) =>
      SettingsState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(SettingsState state) => state.toJson();
}
