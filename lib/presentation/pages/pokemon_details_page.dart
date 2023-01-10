import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/presentation/presentation.dart';
import 'package:pokedex/utils/utils.dart';

class PokemonDetailsPage extends StatefulWidget {
  static const routeName = 'pokemon-details';

  final int currentIndex;
  final Pokemon pokemon;
  const PokemonDetailsPage({
    super.key,
    required this.currentIndex,
    required this.pokemon,
  });

  @override
  State<PokemonDetailsPage> createState() => _PokemonDetailsPageState();
}

class _PokemonDetailsPageState extends State<PokemonDetailsPage> {
  late final PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: widget.currentIndex);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PokemonSwitcherCubit(widget.pokemon),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            PokemonDetailHeader(pageController: _pageController),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  BlocBuilder<PokemonSwitcherCubit, Pokemon>(
                    builder: (context, pokemon) => Text(
                      pokemon.name,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: context.theme.colorScheme.onBackground,
                        fontWeight: FontWeight.w600,
                        fontSize: 28.sp,
                      ),
                    ),
                  ),
                  const PokemonTypes(),
                  const PokemonWeightHeight(),
                  const PokemonBaseStats()
                ]
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 16,
                        ),
                        child: e,
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
