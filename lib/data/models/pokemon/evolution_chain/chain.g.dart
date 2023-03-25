// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chain _$$_ChainFromJson(Map<String, dynamic> json) => _$_Chain(
      evolutionDetails: (json['evolution_details'] as List<dynamic>?)
          ?.map((e) => EvolutionDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      evolvesTo: (json['evolves_to'] as List<dynamic>?)
          ?.map((e) => EvolvesTo.fromJson(e as Map<String, dynamic>))
          .toList(),
      isBaby: json['is_baby'] as bool?,
      species: json['species'] == null
          ? null
          : Species.fromJson(json['species'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChainToJson(_$_Chain instance) => <String, dynamic>{
      'evolution_details':
          instance.evolutionDetails?.map((e) => e.toJson()).toList(),
      'evolves_to': instance.evolvesTo?.map((e) => e.toJson()).toList(),
      'is_baby': instance.isBaby,
      'species': instance.species?.toJson(),
    };
