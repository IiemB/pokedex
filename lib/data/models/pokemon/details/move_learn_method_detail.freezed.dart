// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move_learn_method_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoveLearnMethodDetail _$MoveLearnMethodDetailFromJson(
    Map<String, dynamic> json) {
  return _MoveLearnMethodDetail.fromJson(json);
}

/// @nodoc
mixin _$MoveLearnMethodDetail {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoveLearnMethodDetailCopyWith<MoveLearnMethodDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveLearnMethodDetailCopyWith<$Res> {
  factory $MoveLearnMethodDetailCopyWith(MoveLearnMethodDetail value,
          $Res Function(MoveLearnMethodDetail) then) =
      _$MoveLearnMethodDetailCopyWithImpl<$Res, MoveLearnMethodDetail>;
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class _$MoveLearnMethodDetailCopyWithImpl<$Res,
        $Val extends MoveLearnMethodDetail>
    implements $MoveLearnMethodDetailCopyWith<$Res> {
  _$MoveLearnMethodDetailCopyWithImpl(this._value, this._then);

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
abstract class _$$_MoveLearnMethodDetailCopyWith<$Res>
    implements $MoveLearnMethodDetailCopyWith<$Res> {
  factory _$$_MoveLearnMethodDetailCopyWith(_$_MoveLearnMethodDetail value,
          $Res Function(_$_MoveLearnMethodDetail) then) =
      __$$_MoveLearnMethodDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class __$$_MoveLearnMethodDetailCopyWithImpl<$Res>
    extends _$MoveLearnMethodDetailCopyWithImpl<$Res, _$_MoveLearnMethodDetail>
    implements _$$_MoveLearnMethodDetailCopyWith<$Res> {
  __$$_MoveLearnMethodDetailCopyWithImpl(_$_MoveLearnMethodDetail _value,
      $Res Function(_$_MoveLearnMethodDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_MoveLearnMethodDetail(
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
class _$_MoveLearnMethodDetail implements _MoveLearnMethodDetail {
  _$_MoveLearnMethodDetail({this.name, this.url});

  factory _$_MoveLearnMethodDetail.fromJson(Map<String, dynamic> json) =>
      _$$_MoveLearnMethodDetailFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'MoveLearnMethodDetail(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoveLearnMethodDetail &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoveLearnMethodDetailCopyWith<_$_MoveLearnMethodDetail> get copyWith =>
      __$$_MoveLearnMethodDetailCopyWithImpl<_$_MoveLearnMethodDetail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoveLearnMethodDetailToJson(
      this,
    );
  }
}

abstract class _MoveLearnMethodDetail implements MoveLearnMethodDetail {
  factory _MoveLearnMethodDetail({final String? name, final String? url}) =
      _$_MoveLearnMethodDetail;

  factory _MoveLearnMethodDetail.fromJson(Map<String, dynamic> json) =
      _$_MoveLearnMethodDetail.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_MoveLearnMethodDetailCopyWith<_$_MoveLearnMethodDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
