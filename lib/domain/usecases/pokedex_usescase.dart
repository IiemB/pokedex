import 'package:dartz/dartz.dart';
import 'package:pokedex/common/common.dart';
import 'package:pokedex/core/core.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/domain/domain.dart';

final _repository = getIt<PokedexRepository>();

class PokedexUsecases {
  static const getPokemons = $GetPokemons();
  static const getPokemonDetails = $GetPokemonDetails();
  static const getEvolutionChain = $GetEvolutionChain();
}

class $GetEvolutionChain {
  const $GetEvolutionChain();

  Future<Either<Failure, Evolution>> call(int id) =>
      _repository.getEvolutionChain(id);
}

class $GetPokemonDetails {
  const $GetPokemonDetails();

  Future<Either<Failure, PokemonDetails>> call(String name) =>
      _repository.getPokemonDetails(name);
}

class $GetPokemons {
  const $GetPokemons();

  Future<Either<Failure, PokemonList>> call(String url) =>
      _repository.getPokemons(url);
}
