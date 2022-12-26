// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generation_iv.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenerationIv _$$_GenerationIvFromJson(Map<String, dynamic> json) =>
    _$_GenerationIv(
      diamondPearl: json['diamond-pearl'] == null
          ? null
          : DiamondPearl.fromJson(
              json['diamond-pearl'] as Map<String, dynamic>),
      heartgoldSoulsilver: json['heartgold-soulsilver'] == null
          ? null
          : HeartgoldSoulsilver.fromJson(
              json['heartgold-soulsilver'] as Map<String, dynamic>),
      platinum: json['platinum'] == null
          ? null
          : Platinum.fromJson(json['platinum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GenerationIvToJson(_$_GenerationIv instance) =>
    <String, dynamic>{
      'diamond-pearl': instance.diamondPearl?.toJson(),
      'heartgold-soulsilver': instance.heartgoldSoulsilver?.toJson(),
      'platinum': instance.platinum?.toJson(),
    };
