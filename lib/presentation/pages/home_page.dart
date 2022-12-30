import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/core/core.dart';
import 'package:pokedex/presentation/presentation.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'home';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController
      ..removeListener(() {})
      ..dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              PokemonListBloc()..add(const PokemonListEvent.getPokemons()),
        ),
      ],
      child: Builder(
        builder: (context) => Scaffold(
          body: Scrollbar(
            controller: _scrollController,
            radius: const Radius.circular(16),
            child: CustomScrollView(
              controller: _scrollController
                ..addListener(() {
                  final pokemonListBloc =
                      BlocProvider.of<PokemonListBloc>(context);

                  final isLoading = pokemonListBloc.state.maybeMap<bool>(
                    orElse: () => false,
                    loading: (value) => true,
                  );

                  if (_scrollController.offset ==
                          _scrollController.position.maxScrollExtent &&
                      !isLoading) {
                    pokemonListBloc.add(const PokemonListEvent.getPokemons());
                  }
                }),
              slivers: [
                SliverAppBar(
                  floating: true,
                  title: const Text('Pokedex'),
                  actions: [
                    IconButton(
                      tooltip: 'Settings',
                      onPressed: () => router.push(const SettingsRoute()),
                      icon: const Icon(Icons.settings),
                    )
                  ],
                ),
                BlocBuilder<PokemonListBloc, PokemonListState>(
                  buildWhen: (previous, current) => current.maybeMap(
                    orElse: () => false,
                    loaded: (value) => true,
                  ),
                  builder: (context, state) => state.maybeMap(
                    orElse: () => const SliverToBoxAdapter(),
                    loaded: (value) => BlocBuilder<GridCountCubit, int>(
                      builder: (context, state) => SliverGrid(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: state,
                        ),
                        delegate: SliverChildListDelegate(
                          value.pokemons
                              .map((e) => PokemonCard(pokemon: e))
                              .toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                BlocBuilder<PokemonListBloc, PokemonListState>(
                  builder: (context, state) => state.maybeMap(
                    orElse: () => const SliverToBoxAdapter(),
                    loading: (value) => BlocBuilder<GridCountCubit, int>(
                      builder: (context, state) => SliverGrid(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: state,
                        ),
                        delegate: SliverChildListDelegate(
                          List.generate(
                            Random().nextInt(8) + 3,
                            (index) => const PokemonCardEmpty(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
