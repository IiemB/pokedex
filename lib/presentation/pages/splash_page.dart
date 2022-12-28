import 'package:flutter/material.dart';
import 'package:pokedex/core/core.dart';
import 'package:pokedex/utils/utils.dart';

class SplashPage extends StatelessWidget {
  static const routeName = '/';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () => router.pushAndPopUntil(
        const HomeRoute(),
        predicate: (route) => false,
      ),
    );

    return Scaffold(
      appBar: AppBar(toolbarHeight: 1),
      body: Center(
        child: Assets.images.icon.image(),
      ),
    );
  }
}
