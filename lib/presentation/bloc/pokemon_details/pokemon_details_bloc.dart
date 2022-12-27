import 'dart:io';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:pokedex/common/common.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/domain/domain.dart';

part 'pokemon_details_event.dart';
part 'pokemon_details_state.dart';
part 'pokemon_details_bloc.freezed.dart';

class PokemonDetailsBloc
    extends Bloc<PokemonDetailsEvent, PokemonDetailsState> {
  PokemonDetailsBloc() : super(const PokemonDetailsState.initial()) {
    on<_GetPokemonDetail>(_onGetPokemonDetail, transformer: droppable());
  }

  void _onGetPokemonDetail(
    _GetPokemonDetail event,
    Emitter<PokemonDetailsState> emit,
  ) async {
    final isLoaded = state.mapOrNull(loaded: (value) => true);

    if (isLoaded == true) {
      return;
    }

    emit(const PokemonDetailsState.loading());

    final url = event.url;

    if (url == null) {
      return;
    }

    final result = await PokedexUsecases.getPokemonDetails(url);

    await result.fold(
      (l) async => emit(PokemonDetailsState.error(l)),
      (r) async {
        PaletteGenerator? paletteSvg;
        PaletteGenerator? paletteImage;
        File? svgFile;
        File? imageFile;

        svgFile = await CacheManager.getCacheFile(
          r.sprites?.other?.dreamWorld?.frontDefault,
        );

        if (svgFile != null) {
          paletteSvg = await PaletteGenerator.fromImageProvider(
            Svg(svgFile.path, source: SvgSource.file),
          );
        }

        if (svgFile != null && paletteSvg != null) {
          emit(
            PokemonDetailsState.loaded(
              pokemonDetails: r,
              svgFile: svgFile,
              imageFile: imageFile,
              paletteSvg: paletteSvg,
              paletteImage: paletteImage,
            ),
          );
          return;
        }

        imageFile = await CacheManager.getCacheFile(
          r.sprites?.other?.officialArtwork?.frontDefault,
        );

        if (imageFile != null) {
          paletteImage = await PaletteGenerator.fromImageProvider(
            FileImage(imageFile),
          );
        }

        if (imageFile != null && paletteImage != null) {
          emit(
            PokemonDetailsState.loaded(
              pokemonDetails: r,
              svgFile: svgFile,
              imageFile: imageFile,
              paletteSvg: paletteSvg,
              paletteImage: paletteImage,
            ),
          );
          return;
        }

        imageFile = await CacheManager.getCacheFile(
          r.sprites?.frontDefault ??
              r.sprites?.versions?.generationViii?.icons?.frontDefault,
        );

        if (imageFile != null) {
          paletteImage = await PaletteGenerator.fromImageProvider(
            FileImage(imageFile),
          );
        }

        emit(
          PokemonDetailsState.loaded(
            pokemonDetails: r,
            svgFile: svgFile,
            imageFile: imageFile,
            paletteSvg: paletteSvg,
            paletteImage: paletteImage,
          ),
        );
      },
    );
  }
}
