import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final _fontFamily = GoogleFonts.openSans().fontFamily;
  static const _useMaterial3 = true;
  static const _swapLegacyOnMaterial3 = true;

  static final light = FlexThemeData.light(
    colors: const FlexSchemeColor(
      primary: Color(0xff00296b),
      primaryContainer: Color(0xffa0c2ed),
      secondary: Color(0xffd26900),
      secondaryContainer: Color(0xffffd270),
      tertiary: Color(0xff5c5c95),
      tertiaryContainer: Color(0xffc8dbf8),
      appBarColor: Color(0xffc8dcf8),
    ),
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 9,
    subThemesData: const FlexSubThemesData(),
    keyColors: const FlexKeyColors(),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: _useMaterial3,
    swapLegacyOnMaterial3: _swapLegacyOnMaterial3,
    fontFamily: _fontFamily,
  );

  static final dark = FlexThemeData.dark(
    colors: const FlexSchemeColor(
      primary: Color(0xff00296b),
      primaryContainer: Color(0xffa0c2ed),
      secondary: Color(0xffd26900),
      secondaryContainer: Color(0xffffd270),
      tertiary: Color(0xff5c5c95),
      tertiaryContainer: Color(0xffc8dbf8),
      appBarColor: Color(0xffc8dcf8),
    ),
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 15,
    subThemesData: const FlexSubThemesData(),
    keyColors: const FlexKeyColors(),
    tones: FlexTones.material(Brightness.dark).onMainsUseBW().onSurfacesUseBW(),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: _useMaterial3,
    swapLegacyOnMaterial3: _swapLegacyOnMaterial3,
    fontFamily: _fontFamily,
  );

  static final darkAmoled = FlexThemeData.dark(
    colors: const FlexSchemeColor(
      primary: Color(0xff00296b),
      primaryContainer: Color(0xffa0c2ed),
      secondary: Color(0xffd26900),
      secondaryContainer: Color(0xffffd270),
      tertiary: Color(0xff5c5c95),
      tertiaryContainer: Color(0xffc8dbf8),
      appBarColor: Color(0xffc8dcf8),
    ),
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 15,
    subThemesData: const FlexSubThemesData(),
    keyColors: const FlexKeyColors(),
    tones: FlexTones.material(Brightness.dark).onMainsUseBW().onSurfacesUseBW(),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    darkIsTrueBlack: true,
    useMaterial3: _useMaterial3,
    swapLegacyOnMaterial3: _swapLegacyOnMaterial3,
    fontFamily: _fontFamily,
  );
}
