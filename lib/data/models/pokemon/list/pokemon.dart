import 'package:pokedex/common/common.dart';
import 'package:pokedex/presentation/presentation.dart';
import 'package:pokedex/utils/utils.dart';

class Pokemon {
  Pokemon({
    String? name,
    this.url,
  })  : name = '${name?.replaceAll('-', ' ')}'.capitalizeAllWords,
        detailBloc = PokemonDetailsBloc(url);

  final String name;
  final String? url;

  final PokemonDetailsBloc detailBloc;

  final optionColor = getRandomColor;

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        name: json['name'] as String?,
        url: json['url'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'url': url,
      };
}
