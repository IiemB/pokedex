// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evolution.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Evolution _$EvolutionFromJson(Map<String, dynamic> json) {
  return _Evolution.fromJson(json);
}

/// @nodoc
mixin _$Evolution {
  Chain? get chain => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvolutionCopyWith<Evolution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvolutionCopyWith<$Res> {
  factory $EvolutionCopyWith(Evolution value, $Res Function(Evolution) then) =
      _$EvolutionCopyWithImpl<$Res, Evolution>;
  @useResult
  $Res call({Chain? chain, int? id});

  $ChainCopyWith<$Res>? get chain;
}

/// @nodoc
class _$EvolutionCopyWithImpl<$Res, $Val extends Evolution>
    implements $EvolutionCopyWith<$Res> {
  _$EvolutionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chain = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      chain: freezed == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as Chain?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChainCopyWith<$Res>? get chain {
    if (_value.chain == null) {
      return null;
    }

    return $ChainCopyWith<$Res>(_value.chain!, (value) {
      return _then(_value.copyWith(chain: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EvolutionCopyWith<$Res> implements $EvolutionCopyWith<$Res> {
  factory _$$_EvolutionCopyWith(
          _$_Evolution value, $Res Function(_$_Evolution) then) =
      __$$_EvolutionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Chain? chain, int? id});

  @override
  $ChainCopyWith<$Res>? get chain;
}

/// @nodoc
class __$$_EvolutionCopyWithImpl<$Res>
    extends _$EvolutionCopyWithImpl<$Res, _$_Evolution>
    implements _$$_EvolutionCopyWith<$Res> {
  __$$_EvolutionCopyWithImpl(
      _$_Evolution _value, $Res Function(_$_Evolution) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chain = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Evolution(
      chain: freezed == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as Chain?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Evolution implements _Evolution {
  _$_Evolution({this.chain, this.id});

  factory _$_Evolution.fromJson(Map<String, dynamic> json) =>
      _$$_EvolutionFromJson(json);

  @override
  final Chain? chain;
  @override
  final int? id;

  @override
  String toString() {
    return 'Evolution(chain: $chain, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Evolution &&
            (identical(other.chain, chain) || other.chain == chain) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chain, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EvolutionCopyWith<_$_Evolution> get copyWith =>
      __$$_EvolutionCopyWithImpl<_$_Evolution>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EvolutionToJson(
      this,
    );
  }
}

abstract class _Evolution implements Evolution {
  factory _Evolution({final Chain? chain, final int? id}) = _$_Evolution;

  factory _Evolution.fromJson(Map<String, dynamic> json) =
      _$_Evolution.fromJson;

  @override
  Chain? get chain;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_EvolutionCopyWith<_$_Evolution> get copyWith =>
      throw _privateConstructorUsedError;
}
