// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evolution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Evolution _$$_EvolutionFromJson(Map<String, dynamic> json) => _$_Evolution(
      chain: json['chain'] == null
          ? null
          : Chain.fromJson(json['chain'] as Map<String, dynamic>),
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_EvolutionToJson(_$_Evolution instance) =>
    <String, dynamic>{
      'chain': instance.chain?.toJson(),
      'id': instance.id,
    };
