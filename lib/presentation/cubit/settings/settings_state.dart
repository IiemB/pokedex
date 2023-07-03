part of 'settings_cubit.dart';

class SettingsState {
  final ThemeMode themeMode;
  final int gridCount;
  final bool trueDarkTheme;
  final bool scrollEffect;

  const SettingsState({
    this.themeMode = ThemeMode.system,
    this.gridCount = 2,
    this.trueDarkTheme = false,
    this.scrollEffect = false,
  });

  factory SettingsState.fromJson(Map<String, dynamic> json) {
    final themes = {for (var theme in ThemeMode.values) theme.name: theme};

    return SettingsState(
      themeMode: themes[json['themeMode']] ?? ThemeMode.system,
      gridCount: json['grid'] as int? ?? 2,
      trueDarkTheme: json['trueDarkTheme'] as bool? ?? false,
      scrollEffect: json['scrollEffect'] as bool? ?? false,
    );
  }

  Map<String, dynamic> toJson() => {
        'themeMode': themeMode.name,
        'grid': gridCount,
        'trueDarkTheme': trueDarkTheme,
        'scrollEffect': scrollEffect,
      };

  SettingsState copyWith({
    ThemeMode? themeMode,
    int? gridCount,
    bool? trueDarkTheme,
    bool? scrollEffect,
  }) =>
      SettingsState(
        themeMode: themeMode ?? this.themeMode,
        gridCount: gridCount ?? this.gridCount,
        trueDarkTheme: trueDarkTheme ?? this.trueDarkTheme,
        scrollEffect: scrollEffect ?? this.scrollEffect,
      );
}
