import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return BlocProvider(
      create: (context) =>
          PokemonListBloc()..add(const PokemonListEvent.getPokemons()),
      child: Builder(
        builder: (context) => Scaffold(
          body: CustomScrollView(
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
              const SliverAppBar(
                title: Text('Pokedex'),
                actions: [ChangeThemeButton()],
              ),
              BlocBuilder<PokemonListBloc, PokemonListState>(
                buildWhen: (previous, current) => current.maybeMap(
                  orElse: () => false,
                  loaded: (value) => true,
                ),
                builder: (context, state) => state.maybeMap(
                  orElse: () => const SliverToBoxAdapter(),
                  loaded: (value) => SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => PokemonCard(
                        pokemon: value.pokemons[index],
                      ),
                      childCount: value.pokemons.length,
                    ),
                  ),
                ),
              ),
              BlocBuilder<PokemonListBloc, PokemonListState>(
                builder: (context, state) => state.maybeMap(
                  orElse: () => const SliverToBoxAdapter(),
                  loading: (value) => const SliverToBoxAdapter(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
