// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evolves_to.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EvolvesTo _$EvolvesToFromJson(Map<String, dynamic> json) {
  return _EvolvesTo.fromJson(json);
}

/// @nodoc
mixin _$EvolvesTo {
  @JsonKey(name: 'evolution_details')
  List<EvolutionDetail>? get evolutionDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'evolves_to')
  List<EvolvesTo>? get evolvesTo => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_baby')
  bool? get isBaby => throw _privateConstructorUsedError;
  Species? get species => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvolvesToCopyWith<EvolvesTo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvolvesToCopyWith<$Res> {
  factory $EvolvesToCopyWith(EvolvesTo value, $Res Function(EvolvesTo) then) =
      _$EvolvesToCopyWithImpl<$Res, EvolvesTo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'evolution_details')
      List<EvolutionDetail>? evolutionDetails,
      @JsonKey(name: 'evolves_to') List<EvolvesTo>? evolvesTo,
      @JsonKey(name: 'is_baby') bool? isBaby,
      Species? species});

  $SpeciesCopyWith<$Res>? get species;
}

/// @nodoc
class _$EvolvesToCopyWithImpl<$Res, $Val extends EvolvesTo>
    implements $EvolvesToCopyWith<$Res> {
  _$EvolvesToCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evolutionDetails = freezed,
    Object? evolvesTo = freezed,
    Object? isBaby = freezed,
    Object? species = freezed,
  }) {
    return _then(_value.copyWith(
      evolutionDetails: freezed == evolutionDetails
          ? _value.evolutionDetails
          : evolutionDetails // ignore: cast_nullable_to_non_nullable
              as List<EvolutionDetail>?,
      evolvesTo: freezed == evolvesTo
          ? _value.evolvesTo
          : evolvesTo // ignore: cast_nullable_to_non_nullable
              as List<EvolvesTo>?,
      isBaby: freezed == isBaby
          ? _value.isBaby
          : isBaby // ignore: cast_nullable_to_non_nullable
              as bool?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Species?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeciesCopyWith<$Res>? get species {
    if (_value.species == null) {
      return null;
    }

    return $SpeciesCopyWith<$Res>(_value.species!, (value) {
      return _then(_value.copyWith(species: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EvolvesToCopyWith<$Res> implements $EvolvesToCopyWith<$Res> {
  factory _$$_EvolvesToCopyWith(
          _$_EvolvesTo value, $Res Function(_$_EvolvesTo) then) =
      __$$_EvolvesToCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'evolution_details')
      List<EvolutionDetail>? evolutionDetails,
      @JsonKey(name: 'evolves_to') List<EvolvesTo>? evolvesTo,
      @JsonKey(name: 'is_baby') bool? isBaby,
      Species? species});

  @override
  $SpeciesCopyWith<$Res>? get species;
}

/// @nodoc
class __$$_EvolvesToCopyWithImpl<$Res>
    extends _$EvolvesToCopyWithImpl<$Res, _$_EvolvesTo>
    implements _$$_EvolvesToCopyWith<$Res> {
  __$$_EvolvesToCopyWithImpl(
      _$_EvolvesTo _value, $Res Function(_$_EvolvesTo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evolutionDetails = freezed,
    Object? evolvesTo = freezed,
    Object? isBaby = freezed,
    Object? species = freezed,
  }) {
    return _then(_$_EvolvesTo(
      evolutionDetails: freezed == evolutionDetails
          ? _value._evolutionDetails
          : evolutionDetails // ignore: cast_nullable_to_non_nullable
              as List<EvolutionDetail>?,
      evolvesTo: freezed == evolvesTo
          ? _value._evolvesTo
          : evolvesTo // ignore: cast_nullable_to_non_nullable
              as List<EvolvesTo>?,
      isBaby: freezed == isBaby
          ? _value.isBaby
          : isBaby // ignore: cast_nullable_to_non_nullable
              as bool?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Species?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EvolvesTo implements _EvolvesTo {
  _$_EvolvesTo(
      {@JsonKey(name: 'evolution_details')
      final List<EvolutionDetail>? evolutionDetails,
      @JsonKey(name: 'evolves_to') final List<EvolvesTo>? evolvesTo,
      @JsonKey(name: 'is_baby') this.isBaby,
      this.species})
      : _evolutionDetails = evolutionDetails,
        _evolvesTo = evolvesTo;

  factory _$_EvolvesTo.fromJson(Map<String, dynamic> json) =>
      _$$_EvolvesToFromJson(json);

  final List<EvolutionDetail>? _evolutionDetails;
  @override
  @JsonKey(name: 'evolution_details')
  List<EvolutionDetail>? get evolutionDetails {
    final value = _evolutionDetails;
    if (value == null) return null;
    if (_evolutionDetails is EqualUnmodifiableListView)
      return _evolutionDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EvolvesTo>? _evolvesTo;
  @override
  @JsonKey(name: 'evolves_to')
  List<EvolvesTo>? get evolvesTo {
    final value = _evolvesTo;
    if (value == null) return null;
    if (_evolvesTo is EqualUnmodifiableListView) return _evolvesTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'is_baby')
  final bool? isBaby;
  @override
  final Species? species;

  @override
  String toString() {
    return 'EvolvesTo(evolutionDetails: $evolutionDetails, evolvesTo: $evolvesTo, isBaby: $isBaby, species: $species)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EvolvesTo &&
            const DeepCollectionEquality()
                .equals(other._evolutionDetails, _evolutionDetails) &&
            const DeepCollectionEquality()
                .equals(other._evolvesTo, _evolvesTo) &&
            (identical(other.isBaby, isBaby) || other.isBaby == isBaby) &&
            (identical(other.species, species) || other.species == species));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_evolutionDetails),
      const DeepCollectionEquality().hash(_evolvesTo),
      isBaby,
      species);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EvolvesToCopyWith<_$_EvolvesTo> get copyWith =>
      __$$_EvolvesToCopyWithImpl<_$_EvolvesTo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EvolvesToToJson(
      this,
    );
  }
}

abstract class _EvolvesTo implements EvolvesTo {
  factory _EvolvesTo(
      {@JsonKey(name: 'evolution_details')
      final List<EvolutionDetail>? evolutionDetails,
      @JsonKey(name: 'evolves_to') final List<EvolvesTo>? evolvesTo,
      @JsonKey(name: 'is_baby') final bool? isBaby,
      final Species? species}) = _$_EvolvesTo;

  factory _EvolvesTo.fromJson(Map<String, dynamic> json) =
      _$_EvolvesTo.fromJson;

  @override
  @JsonKey(name: 'evolution_details')
  List<EvolutionDetail>? get evolutionDetails;
  @override
  @JsonKey(name: 'evolves_to')
  List<EvolvesTo>? get evolvesTo;
  @override
  @JsonKey(name: 'is_baby')
  bool? get isBaby;
  @override
  Species? get species;
  @override
  @JsonKey(ignore: true)
  _$$_EvolvesToCopyWith<_$_EvolvesTo> get copyWith =>
      throw _privateConstructorUsedError;
}
