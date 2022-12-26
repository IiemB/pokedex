// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generation_vii.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenerationVii _$$_GenerationViiFromJson(Map<String, dynamic> json) =>
    _$_GenerationVii(
      icons: json['icons'] == null
          ? null
          : Icons.fromJson(Map<String, String?>.from(json['icons'] as Map)),
      ultraSunUltraMoon: json['ultra-sun-ultra-moon'] == null
          ? null
          : UltraSunUltraMoon.fromJson(
              Map<String, String?>.from(json['ultra-sun-ultra-moon'] as Map)),
    );

Map<String, dynamic> _$$_GenerationViiToJson(_$_GenerationVii instance) =>
    <String, dynamic>{
      'icons': instance.icons?.toJson(),
      'ultra-sun-ultra-moon': instance.ultraSunUltraMoon?.toJson(),
    };
