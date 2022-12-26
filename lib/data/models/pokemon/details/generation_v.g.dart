// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generation_v.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenerationV _$$_GenerationVFromJson(Map<String, dynamic> json) =>
    _$_GenerationV(
      blackWhite: json['black-white'] == null
          ? null
          : BlackWhite.fromJson(
              Map<String, String?>.from(json['black-white'] as Map)),
    );

Map<String, dynamic> _$$_GenerationVToJson(_$_GenerationV instance) =>
    <String, dynamic>{
      'black-white': instance.blackWhite?.toJson(),
    };
