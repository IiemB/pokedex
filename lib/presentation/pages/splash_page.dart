import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/core/core.dart';
import 'package:pokedex/presentation/presentation.dart';
import 'package:pokedex/utils/utils.dart';

class SplashPage extends StatelessWidget {
  static const routeName = '/';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Future.delayed(
    //   const Duration(seconds: 2),
    //   () => router.pushAndPopUntil(
    //     const HomeRoute(),
    //     predicate: (route) => false,
    //   ),
    // );

    return BlocListener<PokemonListBloc, PokemonListState>(
      bloc: BlocProvider.of<PokemonListBloc>(context)
        ..add(const PokemonListEvent.getPokemons(force: true)),
      listener: (context, state) => state.mapOrNull(
        loaded: (value) => router.pushAndPopUntil(
          const HomeRoute(),
          predicate: (route) => false,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(toolbarHeight: 1),
        body: Stack(
          children: [
            Center(
              child: Assets.images.icon.image(),
            ),
            const Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: CircularProgressIndicator(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
