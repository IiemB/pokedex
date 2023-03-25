import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex/common/failure.dart';
import 'package:pokedex/data/data.dart';
import 'package:pokedex/domain/domain.dart';

@LazySingleton(as: PokedexRepository)
class PokedexRepositoyImpl implements PokedexRepository {
  final PokedexRemoteDatasources _remoteDatasources;

  PokedexRepositoyImpl(this._remoteDatasources);

  @override
  Future<Either<Failure, PokemonList>> getPokemons(String url) async {
    try {
      final result = await _remoteDatasources.getPokemons(url);

      return right(result);
    } catch (e) {
      return left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, PokemonDetails>> getPokemonDetails(String name) async {
    try {
      final result = await _remoteDatasources.getPokemonDetail(name);

      return right(result);
    } catch (e) {
      return left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, Evolution>> getEvolutionChain(int id) async {
    try {
      final result = await _remoteDatasources.getEvolutionChain(id);

      return right(result);
    } catch (e) {
      return left(Failure(e));
    }
  }
}
