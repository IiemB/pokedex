import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension BuildContextExtension on BuildContext {
  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  double widthPercent(int percent) =>
      MediaQuery.of(this).size.width * (percent / 100);

  double heightPercent(int percent) =>
      MediaQuery.of(this).size.height * (percent / 100);

  ThemeData get theme => Theme.of(this);
}

extension ThemeDataExtension on ThemeData {
  ThemeData get modified => copyWith(
        listTileTheme: listTileTheme.copyWith(
          iconColor: colorScheme.onBackground,
        ),
        snackBarTheme: snackBarTheme.copyWith(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        appBarTheme: appBarTheme.copyWith(
          // centerTitle: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(16),
            ),
          ),
          // color: scaffoldBackgroundColor.withOpacity(0.8),
          titleTextStyle: textTheme.headline5?.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 24.sp,
          ),
          // systemOverlayStyle: appBarTheme.systemOverlayStyle
          //     ?.copyWith(statusBarColor: Colors.transparent),
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
