// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Move _$MoveFromJson(Map<String, dynamic> json) {
  return _Move.fromJson(json);
}

/// @nodoc
mixin _$Move {
  @JsonKey(name: 'move')
  MoveDetail? get moveDetail => throw _privateConstructorUsedError;
  @JsonKey(name: 'version_group_details')
  List<VersionGroupDetail>? get versionGroupDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoveCopyWith<Move> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveCopyWith<$Res> {
  factory $MoveCopyWith(Move value, $Res Function(Move) then) =
      _$MoveCopyWithImpl<$Res, Move>;
  @useResult
  $Res call(
      {@JsonKey(name: 'move') MoveDetail? moveDetail,
      @JsonKey(name: 'version_group_details')
      List<VersionGroupDetail>? versionGroupDetails});

  $MoveDetailCopyWith<$Res>? get moveDetail;
}

/// @nodoc
class _$MoveCopyWithImpl<$Res, $Val extends Move>
    implements $MoveCopyWith<$Res> {
  _$MoveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moveDetail = freezed,
    Object? versionGroupDetails = freezed,
  }) {
    return _then(_value.copyWith(
      moveDetail: freezed == moveDetail
          ? _value.moveDetail
          : moveDetail // ignore: cast_nullable_to_non_nullable
              as MoveDetail?,
      versionGroupDetails: freezed == versionGroupDetails
          ? _value.versionGroupDetails
          : versionGroupDetails // ignore: cast_nullable_to_non_nullable
              as List<VersionGroupDetail>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MoveDetailCopyWith<$Res>? get moveDetail {
    if (_value.moveDetail == null) {
      return null;
    }

    return $MoveDetailCopyWith<$Res>(_value.moveDetail!, (value) {
      return _then(_value.copyWith(moveDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MoveCopyWith<$Res> implements $MoveCopyWith<$Res> {
  factory _$$_MoveCopyWith(_$_Move value, $Res Function(_$_Move) then) =
      __$$_MoveCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'move') MoveDetail? moveDetail,
      @JsonKey(name: 'version_group_details')
      List<VersionGroupDetail>? versionGroupDetails});

  @override
  $MoveDetailCopyWith<$Res>? get moveDetail;
}

/// @nodoc
class __$$_MoveCopyWithImpl<$Res> extends _$MoveCopyWithImpl<$Res, _$_Move>
    implements _$$_MoveCopyWith<$Res> {
  __$$_MoveCopyWithImpl(_$_Move _value, $Res Function(_$_Move) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moveDetail = freezed,
    Object? versionGroupDetails = freezed,
  }) {
    return _then(_$_Move(
      moveDetail: freezed == moveDetail
          ? _value.moveDetail
          : moveDetail // ignore: cast_nullable_to_non_nullable
              as MoveDetail?,
      versionGroupDetails: freezed == versionGroupDetails
          ? _value._versionGroupDetails
          : versionGroupDetails // ignore: cast_nullable_to_non_nullable
              as List<VersionGroupDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Move implements _Move {
  _$_Move(
      {@JsonKey(name: 'move') this.moveDetail,
      @JsonKey(name: 'version_group_details')
      final List<VersionGroupDetail>? versionGroupDetails})
      : _versionGroupDetails = versionGroupDetails;

  factory _$_Move.fromJson(Map<String, dynamic> json) => _$$_MoveFromJson(json);

  @override
  @JsonKey(name: 'move')
  final MoveDetail? moveDetail;
  final List<VersionGroupDetail>? _versionGroupDetails;
  @override
  @JsonKey(name: 'version_group_details')
  List<VersionGroupDetail>? get versionGroupDetails {
    final value = _versionGroupDetails;
    if (value == null) return null;
    if (_versionGroupDetails is EqualUnmodifiableListView)
      return _versionGroupDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Move(moveDetail: $moveDetail, versionGroupDetails: $versionGroupDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Move &&
            (identical(other.moveDetail, moveDetail) ||
                other.moveDetail == moveDetail) &&
            const DeepCollectionEquality()
                .equals(other._versionGroupDetails, _versionGroupDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, moveDetail,
      const DeepCollectionEquality().hash(_versionGroupDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoveCopyWith<_$_Move> get copyWith =>
      __$$_MoveCopyWithImpl<_$_Move>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoveToJson(
      this,
    );
  }
}

abstract class _Move implements Move {
  factory _Move(
      {@JsonKey(name: 'move') final MoveDetail? moveDetail,
      @JsonKey(name: 'version_group_details')
      final List<VersionGroupDetail>? versionGroupDetails}) = _$_Move;

  factory _Move.fromJson(Map<String, dynamic> json) = _$_Move.fromJson;

  @override
  @JsonKey(name: 'move')
  MoveDetail? get moveDetail;
  @override
  @JsonKey(name: 'version_group_details')
  List<VersionGroupDetail>? get versionGroupDetails;
  @override
  @JsonKey(ignore: true)
  _$$_MoveCopyWith<_$_Move> get copyWith => throw _privateConstructorUsedError;
}
