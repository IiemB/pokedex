// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evolution_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EvolutionDetail _$EvolutionDetailFromJson(Map<String, dynamic> json) {
  return _EvolutionDetail.fromJson(json);
}

/// @nodoc
mixin _$EvolutionDetail {
  @JsonKey(name: 'min_level')
  int? get minLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'turn_upside_down')
  bool? get turnUpsideDown => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvolutionDetailCopyWith<EvolutionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvolutionDetailCopyWith<$Res> {
  factory $EvolutionDetailCopyWith(
          EvolutionDetail value, $Res Function(EvolutionDetail) then) =
      _$EvolutionDetailCopyWithImpl<$Res, EvolutionDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'min_level') int? minLevel,
      @JsonKey(name: 'turn_upside_down') bool? turnUpsideDown});
}

/// @nodoc
class _$EvolutionDetailCopyWithImpl<$Res, $Val extends EvolutionDetail>
    implements $EvolutionDetailCopyWith<$Res> {
  _$EvolutionDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minLevel = freezed,
    Object? turnUpsideDown = freezed,
  }) {
    return _then(_value.copyWith(
      minLevel: freezed == minLevel
          ? _value.minLevel
          : minLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      turnUpsideDown: freezed == turnUpsideDown
          ? _value.turnUpsideDown
          : turnUpsideDown // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EvolutionDetailCopyWith<$Res>
    implements $EvolutionDetailCopyWith<$Res> {
  factory _$$_EvolutionDetailCopyWith(
          _$_EvolutionDetail value, $Res Function(_$_EvolutionDetail) then) =
      __$$_EvolutionDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'min_level') int? minLevel,
      @JsonKey(name: 'turn_upside_down') bool? turnUpsideDown});
}

/// @nodoc
class __$$_EvolutionDetailCopyWithImpl<$Res>
    extends _$EvolutionDetailCopyWithImpl<$Res, _$_EvolutionDetail>
    implements _$$_EvolutionDetailCopyWith<$Res> {
  __$$_EvolutionDetailCopyWithImpl(
      _$_EvolutionDetail _value, $Res Function(_$_EvolutionDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minLevel = freezed,
    Object? turnUpsideDown = freezed,
  }) {
    return _then(_$_EvolutionDetail(
      minLevel: freezed == minLevel
          ? _value.minLevel
          : minLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      turnUpsideDown: freezed == turnUpsideDown
          ? _value.turnUpsideDown
          : turnUpsideDown // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EvolutionDetail implements _EvolutionDetail {
  _$_EvolutionDetail(
      {@JsonKey(name: 'min_level') this.minLevel,
      @JsonKey(name: 'turn_upside_down') this.turnUpsideDown});

  factory _$_EvolutionDetail.fromJson(Map<String, dynamic> json) =>
      _$$_EvolutionDetailFromJson(json);

  @override
  @JsonKey(name: 'min_level')
  final int? minLevel;
  @override
  @JsonKey(name: 'turn_upside_down')
  final bool? turnUpsideDown;

  @override
  String toString() {
    return 'EvolutionDetail(minLevel: $minLevel, turnUpsideDown: $turnUpsideDown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EvolutionDetail &&
            (identical(other.minLevel, minLevel) ||
                other.minLevel == minLevel) &&
            (identical(other.turnUpsideDown, turnUpsideDown) ||
                other.turnUpsideDown == turnUpsideDown));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, minLevel, turnUpsideDown);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EvolutionDetailCopyWith<_$_EvolutionDetail> get copyWith =>
      __$$_EvolutionDetailCopyWithImpl<_$_EvolutionDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EvolutionDetailToJson(
      this,
    );
  }
}

abstract class _EvolutionDetail implements EvolutionDetail {
  factory _EvolutionDetail(
          {@JsonKey(name: 'min_level') final int? minLevel,
          @JsonKey(name: 'turn_upside_down') final bool? turnUpsideDown}) =
      _$_EvolutionDetail;

  factory _EvolutionDetail.fromJson(Map<String, dynamic> json) =
      _$_EvolutionDetail.fromJson;

  @override
  @JsonKey(name: 'min_level')
  int? get minLevel;
  @override
  @JsonKey(name: 'turn_upside_down')
  bool? get turnUpsideDown;
  @override
  @JsonKey(ignore: true)
  _$$_EvolutionDetailCopyWith<_$_EvolutionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
