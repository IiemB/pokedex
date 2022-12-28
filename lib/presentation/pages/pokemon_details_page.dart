import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex/core/core.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/presentation/presentation.dart';
import 'package:pokedex/utils/utils.dart';

class PokemonDetailsPage extends StatelessWidget {
  static const routeName = 'pokemon-details';

  final Pokemon pokemon;
  const PokemonDetailsPage({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PokemonDetailsBloc, PokemonDetailsState>(
        bloc: pokemon.detailBloc,
        builder: (context, state) {
          var backgroundColor = pokemon.optionColor;
          int? id;
          List<TypeDetail?>? types;
          List<Stat>? stats;
          double? weight;
          double? height;

          state.mapOrNull<void>(
            loaded: (value) {
              final details = value.pokemonDetails;

              backgroundColor =
                  value.palette?.dominantColor?.color ?? pokemon.optionColor;

              id = details.id;

              types = details.types?.map((e) => e.typeDetail).toList();

              weight = (details.weight ?? 10) / 10;
              height = (details.height ?? 10) / 10;

              stats = details.stats;
            },
          );

          return CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: context.height / 3,
                backgroundColor: backgroundColor,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pokedex',
                      style: TextStyle(
                        color: backgroundColor.getContrastColor,
                      ),
                    ),
                    Text(
                      '#$id',
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: backgroundColor.getContrastColor,
                      ),
                    ),
                  ],
                ),
                leading: IconButton(
                  onPressed: router.pop,
                  icon: Icon(
                    Icons.chevron_left_rounded,
                    color: backgroundColor.getContrastColor,
                  ),
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(16),
                  ),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Padding(
                    padding: const EdgeInsets.fromLTRB(
                      16,
                      24 + kToolbarHeight,
                      16,
                      16,
                    ),
                    child: Hero(
                      tag: pokemon.name,
                      child: state.maybeMap(
                        orElse: () => Assets.images.icon.image(),
                        loaded: (value) {
                          final svgFile = value.svgFile;
                          final imageFile = value.imageFile;

                          if (svgFile != null) {
                            return SvgPicture.file(svgFile);
                          }

                          if (imageFile != null) {
                            return Image.file(imageFile);
                          }

                          return Assets.images.icon.image();
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Text(
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
                    Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        ...?types?.map(
                          (e) {
                            final backgroundColor = Pokemon.getRandomColor;
                            return Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 4,
                              ),
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(16),
                                ),
                              ),
                              child: Text(
                                '${e?.name}'.toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: backgroundColor.getContrastColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp,
                                ),
                              ),
                            );
                          },
                        ).toList()
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '$weight KG',
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: context.theme.colorScheme.onBackground,
                                fontWeight: FontWeight.w600,
                                fontSize: 20.sp,
                              ),
                            ),
                            Text(
                              'Weight',
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: context.theme.colorScheme.onBackground
                                    .withOpacity(0.8),
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '$height M',
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: context.theme.colorScheme.onBackground,
                                fontWeight: FontWeight.w600,
                                fontSize: 20.sp,
                              ),
                            ),
                            Text(
                              'Height',
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: context.theme.colorScheme.onBackground
                                    .withOpacity(0.8),
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    PokemonBaseStats(stats: stats ?? [])
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
          );
        },
      ),
    );
  }
}
