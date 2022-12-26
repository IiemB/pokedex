// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Other _$$_OtherFromJson(Map<String, dynamic> json) => _$_Other(
      dreamWorld: json['dream_world'] == null
          ? null
          : DreamWorld.fromJson(
              Map<String, String?>.from(json['dream_world'] as Map)),
      home: json['home'] == null
          ? null
          : Home.fromJson(Map<String, String?>.from(json['home'] as Map)),
      officialArtwork: json['official-artwork'] == null
          ? null
          : OfficialArtwork.fromJson(
              json['official-artwork'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OtherToJson(_$_Other instance) => <String, dynamic>{
      'dream_world': instance.dreamWorld?.toJson(),
      'home': instance.home?.toJson(),
      'official-artwork': instance.officialArtwork?.toJson(),
    };
