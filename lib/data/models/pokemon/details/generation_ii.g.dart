// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generation_ii.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenerationIi _$$_GenerationIiFromJson(Map<String, dynamic> json) =>
    _$_GenerationIi(
      crystal: json['crystal'] == null
          ? null
          : Crystal.fromJson(json['crystal'] as Map<String, dynamic>),
      gold: json['gold'] == null
          ? null
          : Gold.fromJson(json['gold'] as Map<String, dynamic>),
      silver: json['silver'] == null
          ? null
          : Silver.fromJson(json['silver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GenerationIiToJson(_$_GenerationIi instance) =>
    <String, dynamic>{
      'crystal': instance.crystal?.toJson(),
      'gold': instance.gold?.toJson(),
      'silver': instance.silver?.toJson(),
    };
