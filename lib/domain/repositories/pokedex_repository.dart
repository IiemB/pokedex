import 'package:dartz/dartz.dart';
import 'package:pokedex/common/common.dart';
import 'package:pokedex/data/data.dart';

abstract class PokedexRepository {
  Future<Either<Failure, PokemonList>> getPokemons(String url);
  Future<Either<Failure, PokemonDetails>> getPokemonDetails(String name);
  Future<Either<Failure, Evolution>> getEvolutionChain(int id);
}
