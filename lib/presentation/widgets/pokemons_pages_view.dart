import 'package:exprollable_page_view/exprollable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/presentation/presentation.dart';

class PokemonsPagesView extends StatefulWidget {
  final Pokemon pokemon;
  final List<Pokemon> pokemons;
  const PokemonsPagesView({
    super.key,
    required this.pokemon,
    required this.pokemons,
  });

  @override
  State<PokemonsPagesView> createState() => _PokemonsPagesViewState();
}

class _PokemonsPagesViewState extends State<PokemonsPagesView> {
  late final ExprollablePageController pageController;

  @override
  void initState() {
    final index = widget.pokemons.indexOf(widget.pokemon);

    pageController = ExprollablePageController(
      viewportConfiguration: ViewportConfiguration(extendPage: true),
      initialPage: index,
    );

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ExprollablePageView(
      controller: pageController,
      itemCount: widget.pokemons.length,
      onPageChanged: (index) {
        widget.pokemons[index].detailBloc
            .add(const PokemonDetailsEvent.getPokemonDetail());

        if (index + 1 < widget.pokemons.length) {
          widget.pokemons[index + 1].detailBloc
              .add(const PokemonDetailsEvent.getPokemonDetail());
        }
      },
      itemBuilder: (context, index) => PageGutter(
        gutterWidth: 8,
        child: PokemonDetailsPage(
          pokemon: widget.pokemons.elementAt(index),
          pokemons: widget.pokemons,
        ),
      ),
    );
  }
}
