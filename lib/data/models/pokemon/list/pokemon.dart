import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pokedex/presentation/presentation.dart';
import 'package:pokedex/utils/utils.dart';

class Pokemon {
  Pokemon({
    String? name,
    this.url,
  }) : name = '${name?.replaceAll('-', ' ')}'.capitalizeAllWords;

  final String name;
  final String? url;

  final detailBloc = PokemonDetailsBloc();

  final optionColor = _palettes[Random().nextInt(_palettes.length)];

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        name: json['name'] as String?,
        url: json['url'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'url': url,
      };

  static Color get getRandomColor =>
      _palettes[Random().nextInt(_palettes.length)];
}

const _palettes = [
  Color(0xff089948),
  Color(0xff07722f),
  Color(0xff78b8b0),
  Color(0xffe03820),
  Color(0xffee8d01),
  Color(0xff88a0d0),
  Color(0xff2f8fc6),
  Color(0xff68b828),
  Color(0xffe88101),
  Color(0xff68b858),
  Color(0xffe8e8e8),
  Color(0xff80c8b8),
  Color(0xffe0c080),
  Color(0xfff0e800),
  Color(0xffe8e8f8),
  Color(0xffefd58d),
  Color(0xfff0e088),
  Color(0xffbf7400),
  Color(0xff904890),
  Color(0xffd87890),
  Color(0xff8078a0),
  Color(0xff1a1717),
  Color(0xff7868a8),
  Color(0xfff8e000),
  Color(0xfff8b800),
  Color(0xffceb700),
  Color(0xffb99900),
  Color(0xffced7ed),
  Color(0xffa0d0d0),
  Color(0xff3090c8),
  Color(0xffc890b8),
  Color(0xffc78eb7),
  Color(0xffa080b8),
  Color(0xfff0c0b8),
  Color(0xfff8d8d8),
  Color(0xfff8f8b0),
  Color(0xffe88000),
  Color(0xfff0c8d8),
  Color(0xfff0c9d8),
  Color(0xff9e95c4),
  Color(0xffa098c8),
  Color(0xff009736),
  Color(0xff5289b0),
  Color(0xffe85058),
  Color(0xff8b052f),
  Color(0xffc9003d),
  Color(0xff683088),
  Color(0xffc8a0c8),
  Color(0xff805810),
  Color(0xfff8f0c0),
  Color(0xff6797ce),
  Color(0xff10141a),
  Color(0xff7e4708),
  Color(0xfff6ecbe),
  Color(0xff558db5),
  Color(0xff5890b8),
  Color(0xffc39400),
  Color(0xffe6be00),
  Color(0xffc39500),
  Color(0xffd0d8d8),
  Color(0xffd0d8f0),
  Color(0xffb0d0d8),
  Color(0xffa0d080),
  Color(0xff00b8e8),
  Color(0xffd8d0a8),
  Color(0xff888080),
  Color(0xff808048),
  Color(0xfff8f0a8),
  Color(0xfff7e36f),
  Color(0xffe88098),
  Color(0xffe77f97),
  Color(0xff88b8a0),
  Color(0xffc87000),
  Color(0xfff4cd38),
  Color(0xffd0e8e8),
  Color(0xffc66e00),
  Color(0xffdedfdf),
  Color(0xff8890c0),
  Color(0xff7078b8),
  Color(0xff5f3f90),
  Color(0xff604090),
  Color(0xffc0b8d0),
  Color(0xfff6e538),
  Color(0xfff8d0b0),
  Color(0xfff8e838),
  Color(0xffdd003f),
  Color(0xffe34f00),
  Color(0xffd8d8d0),
  Color(0xffd8d07f),
  Color(0xffb89858),
  Color(0xfff1a5b3),
  Color(0xff9f7fb6),
  Color(0xff80b0d0),
  Color(0xff396394),
  Color(0xfff0c8d0),
  Color(0xff00abd9),
  Color(0xfff0e293),
  Color(0xff00a7d3),
  Color(0xff11181e),
  Color(0xff704800),
  Color(0xff1c1f24),
  Color(0xff67b557),
  Color(0xffde001f),
  Color(0xff014574),
  Color(0xfff5dc00),
  Color(0xffdf0010),
  Color(0xffc8c8c0),
  Color(0xffc56e00),
  Color(0xfff8f090),
  Color(0xff01acdc),
  Color(0xffe090b8),
  Color(0xff58b8e8),
  Color(0xff57bec7),
  Color(0xffae4b00),
  Color(0xfff1c300),
  Color(0xfff5e500),
  Color(0xff69c1be),
  Color(0xffd0b376),
  Color(0xffce7f00),
  Color(0xffdebf7f),
  Color(0xff905808),
  Color(0xff78c8e8),
  Color(0xfff8e8b8),
  Color(0xff8a7ca0),
  Color(0xfff6c600),
  Color(0xff0092cd),
  Color(0xfff4b600),
  Color(0xffe0d0e0),
  Color(0xffd0e0a8),
  Color(0xff88c068),
  Color(0xffebe300),
  Color(0xfff8e8e8),
  Color(0xfff8ee87),
  Color(0xfff8e878),
  Color(0xff58c0e0),
  Color(0xff009ebb),
  Color(0xff009cbf),
  Color(0xff081018),
  Color(0xff1e1e22),
  Color(0xfff0e8d0),
  Color(0xffd0c098),
  Color(0xfff4eca5),
  Color(0xffde0040),
  Color(0xffda2f4e),
  Color(0xff60a8d8),
  Color(0xff458aa3),
  Color(0xfff8ef5f),
  Color(0xfff8d8e8),
  Color(0xffd8d8d8),
  Color(0xff88c050),
  Color(0xfff8f8d8),
  Color(0xffef98bf),
  Color(0xff009ed9),
  Color(0xfff8e058),
  Color(0xff008a2f),
  Color(0xff00a8e8),
  Color(0xff009333),
  Color(0xff68b740),
  Color(0xffe880a8),
  Color(0xff9e7fb6),
  Color(0xfff8f8c0),
  Color(0xfff8e840),
  Color(0xff61a927),
  Color(0xffd0b8d8),
  Color(0xff80c8e0),
  Color(0xff003460),
  Color(0xff485050),
  Color(0xff0092a1),
  Color(0xff383838),
  Color(0xfff6c700),
  Color(0xff00a9cf),
  Color(0xff008898),
  Color(0xfff7ef5f),
  Color(0xff80afcf),
  Color(0xffc677ad),
  Color(0xfff0b0c0),
  Color(0xffdbdd57),
  Color(0xfff2dd3c),
  Color(0xfff09038),
  Color(0xff134c60),
  Color(0xfff8f060),
  Color(0xff111318),
  Color(0xffe0003f),
  Color(0xff111317),
  Color(0xffd6000e),
  Color(0xffc0d7d7),
  Color(0xffcec7de),
  Color(0xff474f50),
  Color(0xffd8e0e8),
  Color(0xff50c0e8),
  Color(0xff0e2b2a),
  Color(0xffa0d0e0),
  Color(0xffd8006e),
  Color(0xff90a8c0),
  Color(0xff1b1c1b),
  Color(0xffdeded6),
  Color(0xfff5ea4f),
  Color(0xff0095c7),
  Color(0xfff8df00),
  Color(0xffe86860),
  Color(0xffb1c1c9),
  Color(0xfff2da00),
  Color(0xffb0c888),
  Color(0xff90b8d8),
  Color(0xff1a2521),
  Color(0xffeb7611),
  Color(0xff007eab),
  Color(0xff5fbeb7),
  Color(0xffe0e0d8),
  Color(0xff2a2c33),
  Color(0xff5e4f28),
  Color(0xffa8b0b0),
  Color(0xffe85070),
  Color(0xff6c6d67),
  Color(0xff75a757),
  Color(0xff87be67),
  Color(0xff68b758),
  Color(0xffd0d0c8),
  Color(0xff071f39),
  Color(0xffe8f0f0),
  Color(0xff082756),
  Color(0xfff7df58),
  Color(0xff9fce7f),
  Color(0xffd0e8f8),
  Color(0xff00a0cc)
];
