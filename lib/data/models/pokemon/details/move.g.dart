// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Move _$$_MoveFromJson(Map<String, dynamic> json) => _$_Move(
      moveDetail: json['move'] == null
          ? null
          : MoveDetail.fromJson(json['move'] as Map<String, dynamic>),
      versionGroupDetails: (json['version_group_details'] as List<dynamic>?)
          ?.map((e) => VersionGroupDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MoveToJson(_$_Move instance) => <String, dynamic>{
      'move': instance.moveDetail?.toJson(),
      'version_group_details':
          instance.versionGroupDetails?.map((e) => e.toJson()).toList(),
    };
