import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  double get width => MediaQuery.sizeOf(this).width;

  double get height => MediaQuery.sizeOf(this).height;

  double widthPercent(int percent) {
    if (percent > 100) {
      percent = 100;
    }
    return width * (percent / 100);
  }

  double heightPercent(int percent) {
    if (percent > 100) {
      percent = 100;
    }
    return height * (percent / 100);
  }

  ThemeData get theme => Theme.of(this);

  Future<T?> showBottomSheet<T>({
    required Widget Function(BuildContext context) builder,
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
    BoxConstraints? constraints,
    Color? barrierColor,

    /// Configured to true
    bool isScrollControlled = true,

    /// Configured to true
    bool useRootNavigator = true,
    bool isDismissible = true,
    bool enableDrag = true,
    RouteSettings? routeSettings,
    AnimationController? transitionAnimationController,
    Offset? anchorPoint,
  }) async {
    final result = await showModalBottomSheet<T>(
      context: this,
      backgroundColor: backgroundColor,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      constraints: constraints,
      barrierColor: backgroundColor,
      isScrollControlled: isScrollControlled,
      useRootNavigator: useRootNavigator,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      routeSettings: routeSettings,
      transitionAnimationController: transitionAnimationController,
      anchorPoint: anchorPoint,
      builder: builder,
    );

    return result;
  }
}

extension ColorExtension on Color {
  Color get getContrastColor =>
      (computeLuminance() > 0.5) ? Colors.black : Colors.white;
}

extension StringExtension on String {
  String get formSlugThenCapitalized => replaceAll('-', ' ').titleCase;

  String get toSlug => toLowerCase().replaceAll(' ', '-');

  String get camelCase => _ReCase(this).camelCase;

  String get constantCase => _ReCase(this).constantCase;

  String get sentenceCase => _ReCase(this).sentenceCase;

  String get snakeCase => _ReCase(this).snakeCase;

  String get dotCase => _ReCase(this).dotCase;

  String get paramCase => _ReCase(this).paramCase;

  String get pathCase => _ReCase(this).pathCase;

  String get pascalCase => _ReCase(this).pascalCase;

  String get headerCase => _ReCase(this).headerCase;

  String get titleCase => _ReCase(this).titleCase;

  String get pascalDotCase => _ReCase(this).pascalDotCase;
}

/// An instance of text to be re-cased.
class _ReCase {
  final RegExp _upperAlphaRegex = RegExp(r'[A-Z]');

  final symbolSet = {' ', '.', '/', '_', '\\', '-'};

  late String originalText;
  late List<String> _words;

  _ReCase(String text) {
    originalText = text;
    _words = _groupIntoWords(text);
  }

  List<String> _groupIntoWords(String text) {
    var sb = StringBuffer();
    var words = <String>[];
    var isAllCaps = text.toUpperCase() == text;

    for (var i = 0; i < text.length; i++) {
      var char = text[i];
      var nextChar = i + 1 == text.length ? null : text[i + 1];

      if (symbolSet.contains(char)) {
        continue;
      }

      sb.write(char);

      var isEndOfWord = nextChar == null ||
          (_upperAlphaRegex.hasMatch(nextChar) && !isAllCaps) ||
          symbolSet.contains(nextChar);

      if (isEndOfWord) {
        words.add(sb.toString());
        sb.clear();
      }
    }

    return words;
  }

  /// camelCase
  String get camelCase => _getCamelCase();

  /// CONSTANT_CASE
  String get constantCase => _getConstantCase();

  /// Sentence case
  String get sentenceCase => _getSentenceCase();

  /// snake_case
  String get snakeCase => _getSnakeCase();

  /// dot.case
  String get dotCase => _getSnakeCase(separator: '.');

  /// param-case
  String get paramCase => _getSnakeCase(separator: '-');

  /// path/case
  String get pathCase => _getSnakeCase(separator: '/');

  /// PascalCase
  String get pascalCase => _getPascalCase();

  /// Header-Case
  String get headerCase => _getPascalCase(separator: '-');

  /// Title Case
  String get titleCase => _getPascalCase(separator: ' ');

  /// PascalDotCase
  String get pascalDotCase => _getPascalCase(separator: '.');

  String _getCamelCase({String separator = ''}) {
    var words = _words.map(_upperCaseFirstLetter).toList();
    if (_words.isNotEmpty) {
      words[0] = words[0].toLowerCase();
    }

    return words.join(separator);
  }

  String _getConstantCase({String separator = '_'}) {
    var words = _words.map((word) => word.toUpperCase()).toList();

    return words.join(separator);
  }

  String _getPascalCase({String separator = ''}) {
    var words = _words.map(_upperCaseFirstLetter).toList();

    return words.join(separator);
  }

  String _getSentenceCase({String separator = ' '}) {
    var words = _words.map((word) => word.toLowerCase()).toList();
    if (_words.isNotEmpty) {
      words[0] = _upperCaseFirstLetter(words[0]);
    }

    return words.join(separator);
  }

  String _getSnakeCase({String separator = '_'}) {
    var words = _words.map((word) => word.toLowerCase()).toList();

    return words.join(separator);
  }

  String _upperCaseFirstLetter(String word) {
    return '${word.substring(0, 1).toUpperCase()}${word.substring(1).toLowerCase()}';
  }
}
