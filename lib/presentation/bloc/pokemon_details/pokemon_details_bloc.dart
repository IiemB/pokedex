import 'dart:io';

import 'package:bloc_concurrency/bloc_concurrency.dart';
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
    emit(const PokemonDetailsState.loading());

    final url = event.url;

    if (url == null) {
      return;
    }

    final result = await PokedexUsecases.getPokemonDetails(url);

    await result.fold(
      (l) async => emit(PokemonDetailsState.error(l)),
      (r) async {
        final file = await CacheManager.getSvgFile(
          r.sprites?.other?.dreamWorld?.frontDefault,
        );

        PaletteGenerator? palette;

        if (file != null) {
          palette = await PaletteGenerator.fromImageProvider(
            Svg(file.path, source: SvgSource.file),
          );
        }

        emit(
          PokemonDetailsState.loaded(
            pokemonDetails: r,
            svgFile: file,
            palette: palette,
          ),
        );
      },
    );
  }
}
