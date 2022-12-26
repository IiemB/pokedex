// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generation_iii.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenerationIii _$$_GenerationIiiFromJson(Map<String, dynamic> json) =>
    _$_GenerationIii(
      emerald: json['emerald'] == null
          ? null
          : Emerald.fromJson(json['emerald'] as Map<String, dynamic>),
      fireredLeafgreen: json['firered-leafgreen'] == null
          ? null
          : FireredLeafgreen.fromJson(
              json['firered-leafgreen'] as Map<String, dynamic>),
      rubySapphire: json['ruby-sapphire'] == null
          ? null
          : RubySapphire.fromJson(
              json['ruby-sapphire'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GenerationIiiToJson(_$_GenerationIii instance) =>
    <String, dynamic>{
      'emerald': instance.emerald?.toJson(),
      'firered-leafgreen': instance.fireredLeafgreen?.toJson(),
      'ruby-sapphire': instance.rubySapphire?.toJson(),
    };
