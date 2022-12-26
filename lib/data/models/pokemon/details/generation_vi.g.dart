// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generation_vi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenerationVi _$$_GenerationViFromJson(Map<String, dynamic> json) =>
    _$_GenerationVi(
      omegarubyAlphasapphire: json['omegaruby-alphasapphire'] == null
          ? null
          : OmegarubyAlphasapphire.fromJson(
              json['omegaruby-alphasapphire'] as Map<String, dynamic>),
      xY: json['x-y'] == null
          ? null
          : Xy.fromJson(json['x-y'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GenerationViToJson(_$_GenerationVi instance) =>
    <String, dynamic>{
      'omegaruby-alphasapphire': instance.omegarubyAlphasapphire?.toJson(),
      'x-y': instance.xY?.toJson(),
    };
