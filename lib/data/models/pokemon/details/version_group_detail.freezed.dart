// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'version_group_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VersionGroupDetail _$VersionGroupDetailFromJson(Map<String, dynamic> json) {
  return _VersionGroupDetail.fromJson(json);
}

/// @nodoc
mixin _$VersionGroupDetail {
  @JsonKey(name: 'level_learned_at')
  int? get levelLearnedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'move_learn_method')
  MoveLearnMethodDetail? get moveLearnMethodDetail =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'version_group')
  VersionGroupDetail? get versionGroupDetail =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionGroupDetailCopyWith<VersionGroupDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionGroupDetailCopyWith<$Res> {
  factory $VersionGroupDetailCopyWith(
          VersionGroupDetail value, $Res Function(VersionGroupDetail) then) =
      _$VersionGroupDetailCopyWithImpl<$Res, VersionGroupDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'level_learned_at') int? levelLearnedAt,
      @JsonKey(name: 'move_learn_method')
      MoveLearnMethodDetail? moveLearnMethodDetail,
      @JsonKey(name: 'version_group') VersionGroupDetail? versionGroupDetail});

  $MoveLearnMethodDetailCopyWith<$Res>? get moveLearnMethodDetail;
  $VersionGroupDetailCopyWith<$Res>? get versionGroupDetail;
}

/// @nodoc
class _$VersionGroupDetailCopyWithImpl<$Res, $Val extends VersionGroupDetail>
    implements $VersionGroupDetailCopyWith<$Res> {
  _$VersionGroupDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelLearnedAt = freezed,
    Object? moveLearnMethodDetail = freezed,
    Object? versionGroupDetail = freezed,
  }) {
    return _then(_value.copyWith(
      levelLearnedAt: freezed == levelLearnedAt
          ? _value.levelLearnedAt
          : levelLearnedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      moveLearnMethodDetail: freezed == moveLearnMethodDetail
          ? _value.moveLearnMethodDetail
          : moveLearnMethodDetail // ignore: cast_nullable_to_non_nullable
              as MoveLearnMethodDetail?,
      versionGroupDetail: freezed == versionGroupDetail
          ? _value.versionGroupDetail
          : versionGroupDetail // ignore: cast_nullable_to_non_nullable
              as VersionGroupDetail?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MoveLearnMethodDetailCopyWith<$Res>? get moveLearnMethodDetail {
    if (_value.moveLearnMethodDetail == null) {
      return null;
    }

    return $MoveLearnMethodDetailCopyWith<$Res>(_value.moveLearnMethodDetail!,
        (value) {
      return _then(_value.copyWith(moveLearnMethodDetail: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VersionGroupDetailCopyWith<$Res>? get versionGroupDetail {
    if (_value.versionGroupDetail == null) {
      return null;
    }

    return $VersionGroupDetailCopyWith<$Res>(_value.versionGroupDetail!,
        (value) {
      return _then(_value.copyWith(versionGroupDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VersionGroupDetailCopyWith<$Res>
    implements $VersionGroupDetailCopyWith<$Res> {
  factory _$$_VersionGroupDetailCopyWith(_$_VersionGroupDetail value,
          $Res Function(_$_VersionGroupDetail) then) =
      __$$_VersionGroupDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'level_learned_at') int? levelLearnedAt,
      @JsonKey(name: 'move_learn_method')
      MoveLearnMethodDetail? moveLearnMethodDetail,
      @JsonKey(name: 'version_group') VersionGroupDetail? versionGroupDetail});

  @override
  $MoveLearnMethodDetailCopyWith<$Res>? get moveLearnMethodDetail;
  @override
  $VersionGroupDetailCopyWith<$Res>? get versionGroupDetail;
}

/// @nodoc
class __$$_VersionGroupDetailCopyWithImpl<$Res>
    extends _$VersionGroupDetailCopyWithImpl<$Res, _$_VersionGroupDetail>
    implements _$$_VersionGroupDetailCopyWith<$Res> {
  __$$_VersionGroupDetailCopyWithImpl(
      _$_VersionGroupDetail _value, $Res Function(_$_VersionGroupDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelLearnedAt = freezed,
    Object? moveLearnMethodDetail = freezed,
    Object? versionGroupDetail = freezed,
  }) {
    return _then(_$_VersionGroupDetail(
      levelLearnedAt: freezed == levelLearnedAt
          ? _value.levelLearnedAt
          : levelLearnedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      moveLearnMethodDetail: freezed == moveLearnMethodDetail
          ? _value.moveLearnMethodDetail
          : moveLearnMethodDetail // ignore: cast_nullable_to_non_nullable
              as MoveLearnMethodDetail?,
      versionGroupDetail: freezed == versionGroupDetail
          ? _value.versionGroupDetail
          : versionGroupDetail // ignore: cast_nullable_to_non_nullable
              as VersionGroupDetail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VersionGroupDetail implements _VersionGroupDetail {
  _$_VersionGroupDetail(
      {@JsonKey(name: 'level_learned_at') this.levelLearnedAt,
      @JsonKey(name: 'move_learn_method') this.moveLearnMethodDetail,
      @JsonKey(name: 'version_group') this.versionGroupDetail});

  factory _$_VersionGroupDetail.fromJson(Map<String, dynamic> json) =>
      _$$_VersionGroupDetailFromJson(json);

  @override
  @JsonKey(name: 'level_learned_at')
  final int? levelLearnedAt;
  @override
  @JsonKey(name: 'move_learn_method')
  final MoveLearnMethodDetail? moveLearnMethodDetail;
  @override
  @JsonKey(name: 'version_group')
  final VersionGroupDetail? versionGroupDetail;

  @override
  String toString() {
    return 'VersionGroupDetail(levelLearnedAt: $levelLearnedAt, moveLearnMethodDetail: $moveLearnMethodDetail, versionGroupDetail: $versionGroupDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VersionGroupDetail &&
            (identical(other.levelLearnedAt, levelLearnedAt) ||
                other.levelLearnedAt == levelLearnedAt) &&
            (identical(other.moveLearnMethodDetail, moveLearnMethodDetail) ||
                other.moveLearnMethodDetail == moveLearnMethodDetail) &&
            (identical(other.versionGroupDetail, versionGroupDetail) ||
                other.versionGroupDetail == versionGroupDetail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, levelLearnedAt, moveLearnMethodDetail, versionGroupDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersionGroupDetailCopyWith<_$_VersionGroupDetail> get copyWith =>
      __$$_VersionGroupDetailCopyWithImpl<_$_VersionGroupDetail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersionGroupDetailToJson(
      this,
    );
  }
}

abstract class _VersionGroupDetail implements VersionGroupDetail {
  factory _VersionGroupDetail(
      {@JsonKey(name: 'level_learned_at') final int? levelLearnedAt,
      @JsonKey(name: 'move_learn_method')
      final MoveLearnMethodDetail? moveLearnMethodDetail,
      @JsonKey(name: 'version_group')
      final VersionGroupDetail? versionGroupDetail}) = _$_VersionGroupDetail;

  factory _VersionGroupDetail.fromJson(Map<String, dynamic> json) =
      _$_VersionGroupDetail.fromJson;

  @override
  @JsonKey(name: 'level_learned_at')
  int? get levelLearnedAt;
  @override
  @JsonKey(name: 'move_learn_method')
  MoveLearnMethodDetail? get moveLearnMethodDetail;
  @override
  @JsonKey(name: 'version_group')
  VersionGroupDetail? get versionGroupDetail;
  @override
  @JsonKey(ignore: true)
  _$$_VersionGroupDetailCopyWith<_$_VersionGroupDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
