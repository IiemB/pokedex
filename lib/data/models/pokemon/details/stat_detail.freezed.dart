// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stat_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatDetail _$StatDetailFromJson(Map<String, dynamic> json) {
  return _StatDetail.fromJson(json);
}

/// @nodoc
mixin _$StatDetail {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatDetailCopyWith<StatDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatDetailCopyWith<$Res> {
  factory $StatDetailCopyWith(
          StatDetail value, $Res Function(StatDetail) then) =
      _$StatDetailCopyWithImpl<$Res, StatDetail>;
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class _$StatDetailCopyWithImpl<$Res, $Val extends StatDetail>
    implements $StatDetailCopyWith<$Res> {
  _$StatDetailCopyWithImpl(this._value, this._then);

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
abstract class _$$_StatDetailCopyWith<$Res>
    implements $StatDetailCopyWith<$Res> {
  factory _$$_StatDetailCopyWith(
          _$_StatDetail value, $Res Function(_$_StatDetail) then) =
      __$$_StatDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class __$$_StatDetailCopyWithImpl<$Res>
    extends _$StatDetailCopyWithImpl<$Res, _$_StatDetail>
    implements _$$_StatDetailCopyWith<$Res> {
  __$$_StatDetailCopyWithImpl(
      _$_StatDetail _value, $Res Function(_$_StatDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_StatDetail(
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
class _$_StatDetail implements _StatDetail {
  _$_StatDetail({this.name, this.url});

  factory _$_StatDetail.fromJson(Map<String, dynamic> json) =>
      _$$_StatDetailFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'StatDetail(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatDetail &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatDetailCopyWith<_$_StatDetail> get copyWith =>
      __$$_StatDetailCopyWithImpl<_$_StatDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatDetailToJson(
      this,
    );
  }
}

abstract class _StatDetail implements StatDetail {
  factory _StatDetail({final String? name, final String? url}) = _$_StatDetail;

  factory _StatDetail.fromJson(Map<String, dynamic> json) =
      _$_StatDetail.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_StatDetailCopyWith<_$_StatDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
