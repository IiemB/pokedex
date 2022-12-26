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

extension on ThemeData {
  ThemeData get modified => copyWith(
        // textTheme: textTheme.copyWith(
        //   bodyText2: textTheme.bodyText2?.copyWith(
        //     fontSize: 14.sp,
        //   ),
        // ),
        listTileTheme: listTileTheme.copyWith(
          iconColor: colorScheme.onBackground,
        ),
        snackBarTheme: snackBarTheme.copyWith(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        appBarTheme: appBarTheme.copyWith(
          centerTitle: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(16),
            ),
          ),
          color: scaffoldBackgroundColor.withOpacity(0.8),
          titleTextStyle: textTheme.headline5?.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 24.sp,
          ),
          systemOverlayStyle: appBarTheme.systemOverlayStyle
              ?.copyWith(statusBarColor: Colors.transparent),
        ),
        floatingActionButtonTheme: floatingActionButtonTheme.copyWith(
          elevation: 0,
          focusElevation: 0,
          hoverElevation: 0,
          disabledElevation: 0,
          highlightElevation: 0,
        ),
      );
}
