// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ability_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AbilityDetail _$AbilityDetailFromJson(Map<String, dynamic> json) {
  return _AbilityDetail.fromJson(json);
}

/// @nodoc
mixin _$AbilityDetail {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbilityDetailCopyWith<AbilityDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityDetailCopyWith<$Res> {
  factory $AbilityDetailCopyWith(
          AbilityDetail value, $Res Function(AbilityDetail) then) =
      _$AbilityDetailCopyWithImpl<$Res, AbilityDetail>;
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class _$AbilityDetailCopyWithImpl<$Res, $Val extends AbilityDetail>
    implements $AbilityDetailCopyWith<$Res> {
  _$AbilityDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AbilityDetailCopyWith<$Res>
    implements $AbilityDetailCopyWith<$Res> {
  factory _$$_AbilityDetailCopyWith(
          _$_AbilityDetail value, $Res Function(_$_AbilityDetail) then) =
      __$$_AbilityDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class __$$_AbilityDetailCopyWithImpl<$Res>
    extends _$AbilityDetailCopyWithImpl<$Res, _$_AbilityDetail>
    implements _$$_AbilityDetailCopyWith<$Res> {
  __$$_AbilityDetailCopyWithImpl(
      _$_AbilityDetail _value, $Res Function(_$_AbilityDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_AbilityDetail(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AbilityDetail implements _AbilityDetail {
  _$_AbilityDetail({this.name, this.url});

  factory _$_AbilityDetail.fromJson(Map<String, dynamic> json) =>
      _$$_AbilityDetailFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'AbilityDetail(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AbilityDetail &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AbilityDetailCopyWith<_$_AbilityDetail> get copyWith =>
      __$$_AbilityDetailCopyWithImpl<_$_AbilityDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbilityDetailToJson(
      this,
    );
  }
}

abstract class _AbilityDetail implements AbilityDetail {
  factory _AbilityDetail({final String? name, final String? url}) =
      _$_AbilityDetail;

  factory _AbilityDetail.fromJson(Map<String, dynamic> json) =
      _$_AbilityDetail.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_AbilityDetailCopyWith<_$_AbilityDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
