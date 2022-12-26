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
              Map<String, String?>.from(json['diamond-pearl'] as Map)),
      heartgoldSoulsilver: json['heartgold-soulsilver'] == null
          ? null
          : HeartgoldSoulsilver.fromJson(
              Map<String, String?>.from(json['heartgold-soulsilver'] as Map)),
      platinum: json['platinum'] == null
          ? null
          : Platinum.fromJson(
              Map<String, String?>.from(json['platinum'] as Map)),
    );

Map<String, dynamic> _$$_GenerationIvToJson(_$_GenerationIv instance) =>
    <String, dynamic>{
      'diamond-pearl': instance.diamondPearl?.toJson(),
      'heartgold-soulsilver': instance.heartgoldSoulsilver?.toJson(),
      'platinum': instance.platinum?.toJson(),
    };
