// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generation_v.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenerationV _$GenerationVFromJson(Map<String, dynamic> json) {
  return _GenerationV.fromJson(json);
}

/// @nodoc
mixin _$GenerationV {
  @JsonKey(name: 'black-white')
  BlackWhite? get blackWhite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenerationVCopyWith<GenerationV> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerationVCopyWith<$Res> {
  factory $GenerationVCopyWith(
          GenerationV value, $Res Function(GenerationV) then) =
      _$GenerationVCopyWithImpl<$Res, GenerationV>;
  @useResult
  $Res call({@JsonKey(name: 'black-white') BlackWhite? blackWhite});

  $BlackWhiteCopyWith<$Res>? get blackWhite;
}

/// @nodoc
class _$GenerationVCopyWithImpl<$Res, $Val extends GenerationV>
    implements $GenerationVCopyWith<$Res> {
  _$GenerationVCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blackWhite = freezed,
  }) {
    return _then(_value.copyWith(
      blackWhite: freezed == blackWhite
          ? _value.blackWhite
          : blackWhite // ignore: cast_nullable_to_non_nullable
              as BlackWhite?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BlackWhiteCopyWith<$Res>? get blackWhite {
    if (_value.blackWhite == null) {
      return null;
    }

    return $BlackWhiteCopyWith<$Res>(_value.blackWhite!, (value) {
      return _then(_value.copyWith(blackWhite: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GenerationVCopyWith<$Res>
    implements $GenerationVCopyWith<$Res> {
  factory _$$_GenerationVCopyWith(
          _$_GenerationV value, $Res Function(_$_GenerationV) then) =
      __$$_GenerationVCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'black-white') BlackWhite? blackWhite});

  @override
  $BlackWhiteCopyWith<$Res>? get blackWhite;
}

/// @nodoc
class __$$_GenerationVCopyWithImpl<$Res>
    extends _$GenerationVCopyWithImpl<$Res, _$_GenerationV>
    implements _$$_GenerationVCopyWith<$Res> {
  __$$_GenerationVCopyWithImpl(
      _$_GenerationV _value, $Res Function(_$_GenerationV) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blackWhite = freezed,
  }) {
    return _then(_$_GenerationV(
      blackWhite: freezed == blackWhite
          ? _value.blackWhite
          : blackWhite // ignore: cast_nullable_to_non_nullable
              as BlackWhite?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenerationV implements _GenerationV {
  _$_GenerationV({@JsonKey(name: 'black-white') this.blackWhite});

  factory _$_GenerationV.fromJson(Map<String, dynamic> json) =>
      _$$_GenerationVFromJson(json);

  @override
  @JsonKey(name: 'black-white')
  final BlackWhite? blackWhite;

  @override
  String toString() {
    return 'GenerationV(blackWhite: $blackWhite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerationV &&
            (identical(other.blackWhite, blackWhite) ||
                other.blackWhite == blackWhite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, blackWhite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerationVCopyWith<_$_GenerationV> get copyWith =>
      __$$_GenerationVCopyWithImpl<_$_GenerationV>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenerationVToJson(
      this,
    );
  }
}

abstract class _GenerationV implements GenerationV {
  factory _GenerationV(
          {@JsonKey(name: 'black-white') final BlackWhite? blackWhite}) =
      _$_GenerationV;

  factory _GenerationV.fromJson(Map<String, dynamic> json) =
      _$_GenerationV.fromJson;

  @override
  @JsonKey(name: 'black-white')
  BlackWhite? get blackWhite;
  @override
  @JsonKey(ignore: true)
  _$$_GenerationVCopyWith<_$_GenerationV> get copyWith =>
      throw _privateConstructorUsedError;
}
