import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex/common/common.dart';
import 'package:pokedex/core/core.dart';
import 'package:pokedex/data/data.dart';

@LazySingleton(as: PokedexRemoteDatasources)
class PokedexRemoteDatasourcesImpl implements PokedexRemoteDatasources {
  final _dio = AppDio.instance;

  @override
  Future<PokemonList> getPokemons(String url) async {
    try {
      Future<PokemonList> getData() async {
        final response = await _dio.get(url);

        final data = PokemonList.fromJson(response.data);

        return data;
      }

      if (kIsWeb) {
        final data = await getData();

        return data;
      }

      final cachedJsonData = await cacheManager.getJson(url);

      if (cachedJsonData != null) {
        return PokemonList.fromJson(cachedJsonData);
      }

      final data = await getData();

      await cacheManager.saveJson(url, data.toJson());

      return data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<PokemonDetails> getPokemonDetail(String url) async {
    try {
      Future<PokemonDetails> getData() async {
        final response = await _dio.get(url);

        final data = PokemonDetails.fromJson(response.data);

        return data;
      }

      if (kIsWeb) {
        final data = await getData();

        return data;
      }

      final cachedJsonData = await cacheManager.getJson(url);

      if (cachedJsonData != null) {
        return PokemonDetails.fromJson(cachedJsonData);
      }

      final data = await getData();

      await cacheManager.saveJson(url, data.toJson());

      return data;
    } catch (e) {
      rethrow;
    }
  }
}
