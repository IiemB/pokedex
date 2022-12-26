// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'icons.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Icons _$IconsFromJson(Map<String, dynamic> json) {
  return _Icons.fromJson(json);
}

/// @nodoc
mixin _$Icons {
  @JsonKey(name: 'front_default')
  String? get frontDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_female')
  String? get frontFemale => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IconsCopyWith<Icons> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IconsCopyWith<$Res> {
  factory $IconsCopyWith(Icons value, $Res Function(Icons) then) =
      _$IconsCopyWithImpl<$Res, Icons>;
  @useResult
  $Res call(
      {@JsonKey(name: 'front_default') String? frontDefault,
      @JsonKey(name: 'front_female') String? frontFemale});
}

/// @nodoc
class _$IconsCopyWithImpl<$Res, $Val extends Icons>
    implements $IconsCopyWith<$Res> {
  _$IconsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
    Object? frontFemale = freezed,
  }) {
    return _then(_value.copyWith(
      frontDefault: freezed == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      frontFemale: freezed == frontFemale
          ? _value.frontFemale
          : frontFemale // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IconsCopyWith<$Res> implements $IconsCopyWith<$Res> {
  factory _$$_IconsCopyWith(_$_Icons value, $Res Function(_$_Icons) then) =
      __$$_IconsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'front_default') String? frontDefault,
      @JsonKey(name: 'front_female') String? frontFemale});
}

/// @nodoc
class __$$_IconsCopyWithImpl<$Res> extends _$IconsCopyWithImpl<$Res, _$_Icons>
    implements _$$_IconsCopyWith<$Res> {
  __$$_IconsCopyWithImpl(_$_Icons _value, $Res Function(_$_Icons) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
    Object? frontFemale = freezed,
  }) {
    return _then(_$_Icons(
      frontDefault: freezed == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      frontFemale: freezed == frontFemale
          ? _value.frontFemale
          : frontFemale // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Icons implements _Icons {
  _$_Icons(
      {@JsonKey(name: 'front_default') this.frontDefault,
      @JsonKey(name: 'front_female') this.frontFemale});

  factory _$_Icons.fromJson(Map<String, dynamic> json) =>
      _$$_IconsFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String? frontDefault;
  @override
  @JsonKey(name: 'front_female')
  final String? frontFemale;

  @override
  String toString() {
    return 'Icons(frontDefault: $frontDefault, frontFemale: $frontFemale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Icons &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.frontFemale, frontFemale) ||
                other.frontFemale == frontFemale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault, frontFemale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IconsCopyWith<_$_Icons> get copyWith =>
      __$$_IconsCopyWithImpl<_$_Icons>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IconsToJson(
      this,
    );
  }
}

abstract class _Icons implements Icons {
  factory _Icons(
      {@JsonKey(name: 'front_default') final String? frontDefault,
      @JsonKey(name: 'front_female') final String? frontFemale}) = _$_Icons;

  factory _Icons.fromJson(Map<String, dynamic> json) = _$_Icons.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String? get frontDefault;
  @override
  @JsonKey(name: 'front_female')
  String? get frontFemale;
  @override
  @JsonKey(ignore: true)
  _$$_IconsCopyWith<_$_Icons> get copyWith =>
      throw _privateConstructorUsedError;
}
