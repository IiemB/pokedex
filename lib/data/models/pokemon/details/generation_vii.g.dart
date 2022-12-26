// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generation_vii.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenerationVii _$$_GenerationViiFromJson(Map<String, dynamic> json) =>
    _$_GenerationVii(
      icons: json['icons'] == null
          ? null
          : Icons.fromJson(json['icons'] as Map<String, dynamic>),
      ultraSunUltraMoon: json['ultra-sun-ultra-moon'] == null
          ? null
          : UltraSunUltraMoon.fromJson(
              json['ultra-sun-ultra-moon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GenerationViiToJson(_$_GenerationVii instance) =>
    <String, dynamic>{
      'icons': instance.icons?.toJson(),
      'ultra-sun-ultra-moon': instance.ultraSunUltraMoon?.toJson(),
    };
