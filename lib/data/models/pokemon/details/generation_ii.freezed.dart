// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generation_ii.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenerationIi _$GenerationIiFromJson(Map<String, dynamic> json) {
  return _GenerationIi.fromJson(json);
}

/// @nodoc
mixin _$GenerationIi {
  Crystal? get crystal => throw _privateConstructorUsedError;
  Gold? get gold => throw _privateConstructorUsedError;
  Silver? get silver => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenerationIiCopyWith<GenerationIi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerationIiCopyWith<$Res> {
  factory $GenerationIiCopyWith(
          GenerationIi value, $Res Function(GenerationIi) then) =
      _$GenerationIiCopyWithImpl<$Res, GenerationIi>;
  @useResult
  $Res call({Crystal? crystal, Gold? gold, Silver? silver});

  $CrystalCopyWith<$Res>? get crystal;
  $GoldCopyWith<$Res>? get gold;
  $SilverCopyWith<$Res>? get silver;
}

/// @nodoc
class _$GenerationIiCopyWithImpl<$Res, $Val extends GenerationIi>
    implements $GenerationIiCopyWith<$Res> {
  _$GenerationIiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crystal = freezed,
    Object? gold = freezed,
    Object? silver = freezed,
  }) {
    return _then(_value.copyWith(
      crystal: freezed == crystal
          ? _value.crystal
          : crystal // ignore: cast_nullable_to_non_nullable
              as Crystal?,
      gold: freezed == gold
          ? _value.gold
          : gold // ignore: cast_nullable_to_non_nullable
              as Gold?,
      silver: freezed == silver
          ? _value.silver
          : silver // ignore: cast_nullable_to_non_nullable
              as Silver?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CrystalCopyWith<$Res>? get crystal {
    if (_value.crystal == null) {
      return null;
    }

    return $CrystalCopyWith<$Res>(_value.crystal!, (value) {
      return _then(_value.copyWith(crystal: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GoldCopyWith<$Res>? get gold {
    if (_value.gold == null) {
      return null;
    }

    return $GoldCopyWith<$Res>(_value.gold!, (value) {
      return _then(_value.copyWith(gold: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SilverCopyWith<$Res>? get silver {
    if (_value.silver == null) {
      return null;
    }

    return $SilverCopyWith<$Res>(_value.silver!, (value) {
      return _then(_value.copyWith(silver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GenerationIiCopyWith<$Res>
    implements $GenerationIiCopyWith<$Res> {
  factory _$$_GenerationIiCopyWith(
          _$_GenerationIi value, $Res Function(_$_GenerationIi) then) =
      __$$_GenerationIiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Crystal? crystal, Gold? gold, Silver? silver});

  @override
  $CrystalCopyWith<$Res>? get crystal;
  @override
  $GoldCopyWith<$Res>? get gold;
  @override
  $SilverCopyWith<$Res>? get silver;
}

/// @nodoc
class __$$_GenerationIiCopyWithImpl<$Res>
    extends _$GenerationIiCopyWithImpl<$Res, _$_GenerationIi>
    implements _$$_GenerationIiCopyWith<$Res> {
  __$$_GenerationIiCopyWithImpl(
      _$_GenerationIi _value, $Res Function(_$_GenerationIi) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crystal = freezed,
    Object? gold = freezed,
    Object? silver = freezed,
  }) {
    return _then(_$_GenerationIi(
      crystal: freezed == crystal
          ? _value.crystal
          : crystal // ignore: cast_nullable_to_non_nullable
              as Crystal?,
      gold: freezed == gold
          ? _value.gold
          : gold // ignore: cast_nullable_to_non_nullable
              as Gold?,
      silver: freezed == silver
          ? _value.silver
          : silver // ignore: cast_nullable_to_non_nullable
              as Silver?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenerationIi implements _GenerationIi {
  _$_GenerationIi({this.crystal, this.gold, this.silver});

  factory _$_GenerationIi.fromJson(Map<String, dynamic> json) =>
      _$$_GenerationIiFromJson(json);

  @override
  final Crystal? crystal;
  @override
  final Gold? gold;
  @override
  final Silver? silver;

  @override
  String toString() {
    return 'GenerationIi(crystal: $crystal, gold: $gold, silver: $silver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerationIi &&
            (identical(other.crystal, crystal) || other.crystal == crystal) &&
            (identical(other.gold, gold) || other.gold == gold) &&
            (identical(other.silver, silver) || other.silver == silver));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, crystal, gold, silver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerationIiCopyWith<_$_GenerationIi> get copyWith =>
      __$$_GenerationIiCopyWithImpl<_$_GenerationIi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenerationIiToJson(
      this,
    );
  }
}

abstract class _GenerationIi implements GenerationIi {
  factory _GenerationIi(
      {final Crystal? crystal,
      final Gold? gold,
      final Silver? silver}) = _$_GenerationIi;

  factory _GenerationIi.fromJson(Map<String, dynamic> json) =
      _$_GenerationIi.fromJson;

  @override
  Crystal? get crystal;
  @override
  Gold? get gold;
  @override
  Silver? get silver;
  @override
  @JsonKey(ignore: true)
  _$$_GenerationIiCopyWith<_$_GenerationIi> get copyWith =>
      throw _privateConstructorUsedError;
}
