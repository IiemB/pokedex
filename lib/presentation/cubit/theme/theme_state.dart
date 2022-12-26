part of 'theme_cubit.dart';

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
