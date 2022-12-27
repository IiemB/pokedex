part of 'pokemon_details_bloc.dart';

@freezed
class PokemonDetailsState with _$PokemonDetailsState {
  const factory PokemonDetailsState.initial() = _Initial;
  const factory PokemonDetailsState.loading() = _Loading;
  const factory PokemonDetailsState.loaded({
    required PokemonDetails pokemonDetails,
    required File? svgFile,
    required File? imageFile,
    required PaletteGenerator? paletteSvg,
    required PaletteGenerator? paletteImage,
  }) = _Loaded;
  const factory PokemonDetailsState.error(Failure failure) = _Error;
}
