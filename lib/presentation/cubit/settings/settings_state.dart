part of 'settings_cubit.dart';

class SettingsState {
  final ThemeState themeState;
  final int gridCount;
  final bool showSearch;

  const SettingsState({
    this.themeState = ThemeState.light,
    this.gridCount = 2,
    this.showSearch = true,
  });

  factory SettingsState.fromJson(Map<String, dynamic> json) {
    final themes = {for (var theme in ThemeState.values) theme.name: theme};

    return SettingsState(
      themeState: themes[json['theme']] ?? ThemeState.light,
      gridCount: json['grid'] as int? ?? 2,
      showSearch: json['search'] as bool? ?? true,
    );
  }

  Map<String, dynamic> toJson() => {
        'theme': themeState.name,
        'grid': gridCount,
        'search': showSearch,
      };

  SettingsState copyWith({
    ThemeState? themeState,
    int? gridCount,
    bool? showSearch,
  }) =>
      SettingsState(
        themeState: themeState ?? this.themeState,
        gridCount: gridCount ?? this.gridCount,
        showSearch: showSearch ?? this.showSearch,
      );
}

enum ThemeState {
  light('Light', ThemeMode.light, Icons.light_mode),
  dark('Dark', ThemeMode.dark, Icons.dark_mode_outlined),
  dartAmoled('Dark Amoled', ThemeMode.dark, Icons.dark_mode),
  ;

  const ThemeState(this.themeName, this.themeMode, this.iconData);

  final String themeName;
  final ThemeMode themeMode;
  final IconData iconData;
}

extension ThemeStateExtension on ThemeState {
  ThemeData? get themeData => {
        ThemeState.light: AppTheme.light,
        ThemeState.dark: AppTheme.dark,
        ThemeState.dartAmoled: AppTheme.darkAmoled,
      }[this]
          ?.modified;
}
