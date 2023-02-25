import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final _fontFamily = GoogleFonts.openSans().fontFamily;
  static const _useMaterial3 = true;
  static const _swapLegacyOnMaterial3 = true;

  static final light = FlexThemeData.light(
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

  static final dark = FlexThemeData.dark(
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

  static final darkAmoled = FlexThemeData.dark(
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
}
