import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/utils/utils.dart';

class AppTheme {
  static final _fontFamily = GoogleFonts.openSans().fontFamily;
  static const _useMaterial3 = true;
  static const _swapLegacyOnMaterial3 = true;

  static final _light = FlexThemeData.light(
    scheme: FlexScheme.deepBlue,
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 9,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 10,
      blendOnColors: false,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: _useMaterial3,
    swapLegacyOnMaterial3: _swapLegacyOnMaterial3,
    fontFamily: _fontFamily,
  );

  static final _dark = FlexThemeData.dark(
    scheme: FlexScheme.deepBlue,
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 15,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 20,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: _useMaterial3,
    swapLegacyOnMaterial3: _swapLegacyOnMaterial3,
    fontFamily: _fontFamily,
  );

  static final _darkAmoled = FlexThemeData.dark(
    scheme: FlexScheme.deepBlue,
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 15,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 20,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    darkIsTrueBlack: true,
    useMaterial3: _useMaterial3,
    swapLegacyOnMaterial3: _swapLegacyOnMaterial3,
    fontFamily: _fontFamily,
  );

  static ThemeData light() => _light.modified;
  static ThemeData dark(bool trueBlack) =>
      trueBlack ? _darkAmoled.modified : _dark.modified;
}

extension _ThemeDataExtension on ThemeData {
  ThemeData get modified => copyWith(
        snackBarTheme: snackBarTheme.copyWith(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        appBarTheme: appBarTheme.copyWith(
          titleTextStyle: textTheme.bodyLarge?.merge(
            TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24.sp,
              color: appBarTheme.backgroundColor?.getContrastColor,
            ),
          ),
        ),
      );
}
