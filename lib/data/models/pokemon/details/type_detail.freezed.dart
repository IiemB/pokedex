// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'type_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TypeDetail _$TypeDetailFromJson(Map<String, dynamic> json) {
  return _TypeDetail.fromJson(json);
}

/// @nodoc
mixin _$TypeDetail {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeDetailCopyWith<TypeDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeDetailCopyWith<$Res> {
  factory $TypeDetailCopyWith(
          TypeDetail value, $Res Function(TypeDetail) then) =
      _$TypeDetailCopyWithImpl<$Res, TypeDetail>;
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class _$TypeDetailCopyWithImpl<$Res, $Val extends TypeDetail>
    implements $TypeDetailCopyWith<$Res> {
  _$TypeDetailCopyWithImpl(this._value, this._then);

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
abstract class _$$_TypeDetailCopyWith<$Res>
    implements $TypeDetailCopyWith<$Res> {
  factory _$$_TypeDetailCopyWith(
          _$_TypeDetail value, $Res Function(_$_TypeDetail) then) =
      __$$_TypeDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class __$$_TypeDetailCopyWithImpl<$Res>
    extends _$TypeDetailCopyWithImpl<$Res, _$_TypeDetail>
    implements _$$_TypeDetailCopyWith<$Res> {
  __$$_TypeDetailCopyWithImpl(
      _$_TypeDetail _value, $Res Function(_$_TypeDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_TypeDetail(
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
class _$_TypeDetail implements _TypeDetail {
  _$_TypeDetail({this.name, this.url});

  factory _$_TypeDetail.fromJson(Map<String, dynamic> json) =>
      _$$_TypeDetailFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'TypeDetail(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TypeDetail &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TypeDetailCopyWith<_$_TypeDetail> get copyWith =>
      __$$_TypeDetailCopyWithImpl<_$_TypeDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TypeDetailToJson(
      this,
    );
  }
}

abstract class _TypeDetail implements TypeDetail {
  factory _TypeDetail({final String? name, final String? url}) = _$_TypeDetail;

  factory _TypeDetail.fromJson(Map<String, dynamic> json) =
      _$_TypeDetail.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_TypeDetailCopyWith<_$_TypeDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
