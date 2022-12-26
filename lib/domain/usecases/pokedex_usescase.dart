import 'package:dartz/dartz.dart';
import 'package:pokedex/common/common.dart';
import 'package:pokedex/core/core.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/domain/domain.dart';

final _repository = getIt<PokedexRepository>();

class PokedexUsecases {
  static const getPokemons = $GetPokemons();
  static const getPokemonDetails = $GetPokemonDetails();
}

class $GetPokemonDetails {
  const $GetPokemonDetails();

  Future<Either<Failure, PokemonDetails>> call(String url) =>
      _repository.getPokemonDetails(url);
}

class $GetPokemons {
  const $GetPokemons();

  Future<Either<Failure, PokemonList>> call(String url) =>
      _repository.getPokemons(url);
}
