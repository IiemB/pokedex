import 'package:pokedex/data/data.dart';

abstract class PokedexRemoteDatasources {
  Future<PokemonList> getPokemons(String url);
  Future<PokemonDetails> getPokemonDetail(String name);
  Future<Evolution> getEvolutionChain(int id);
}
