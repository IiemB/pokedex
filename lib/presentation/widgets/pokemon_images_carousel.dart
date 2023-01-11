import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/presentation/presentation.dart';
import 'package:pokedex/utils/utils.dart';

class PokemonImagesCarousel extends StatelessWidget {
  const PokemonImagesCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 24 + kToolbarHeight,
        bottom: 8,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: context.width,
            child: BlocBuilder<PokemonListBloc, PokemonListState>(
              builder: (context, state) => state.maybeMap(
                orElse: () => Assets.images.icon.image(),
                loaded: (value) => CarouselSlider.builder(
                  options: CarouselOptions(
                    initialPage: value.pokemons.indexOf(
                      BlocProvider.of<PokemonSwitcherCubit>(context).state,
                    ),
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    disableCenter: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                    enlargeFactor: 0.5,
                    viewportFraction: 0.7,
                    padEnds: false,
                    onPageChanged: (index, reason) {
                      final pokemon = value.pokemons[index]
                        ..detailBloc
                            .add(const PokemonDetailsEvent.getPokemonDetail());

                      if (index + 1 < value.pokemons.length) {
                        value.pokemons[index + 1].detailBloc
                            .add(const PokemonDetailsEvent.getPokemonDetail());
                      }

                      BlocProvider.of<PokemonSwitcherCubit>(
                        context,
                      ).switchPokemon(pokemon);
                    },
                  ),
                  itemCount: value.pokemons.length,
                  itemBuilder: (context, index, realIndex) {
                    final pokemon = value.pokemons[index];

                    return PokemonHeaderImage(pokemon: pokemon);
                  },
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Row(
                children: [
                  const Spacer(),
                  SizedBox(
                    width: context.width / 3,
                    child: BlocBuilder<PokemonListBloc, PokemonListState>(
                      builder: (context, pokemonListState) {
                        return BlocBuilder<PokemonSwitcherCubit, Pokemon>(
                          builder: (context, pokemon) {
                            return PageViewDotIndicator(
                              unselectedSize: const Size.square(8),
                              currentItem: pokemonListState.maybeMap(
                                orElse: () => 0,
                                loaded: (value) =>
                                    value.pokemons.indexOf(pokemon),
                              ),
                              count: pokemonListState.maybeMap(
                                orElse: () => 1,
                                loaded: (value) => value.pokemons.length,
                              ),
                              unselectedColor: Colors.black26,
                              selectedColor: context.theme.primaryColor,
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
