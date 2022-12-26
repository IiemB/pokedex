// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generation_i.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenerationI _$$_GenerationIFromJson(Map<String, dynamic> json) =>
    _$_GenerationI(
      redBlue: json['red-blue'] == null
          ? null
          : RedBlue.fromJson(json['red-blue'] as Map<String, dynamic>),
      yellow: json['yellow'] == null
          ? null
          : Yellow.fromJson(json['yellow'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GenerationIToJson(_$_GenerationI instance) =>
    <String, dynamic>{
      'red-blue': instance.redBlue?.toJson(),
      'yellow': instance.yellow?.toJson(),
    };
