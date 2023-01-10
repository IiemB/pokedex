import 'package:flutter/material.dart';

enum PokemonStats {
  hp('Hp', Color(0xfff0c0b8)),
  attack('Attack', Color(0xffe88000)),
  defense('Defense', Color(0xff9e95c4)),
  spAtk('Sp. Atk', Color(0xff805810)),
  spDef('Sp. Def', Color(0xff6797ce)),
  speed('Speed', Color(0xffe6be00)),
  ;

  const PokemonStats(this.statName, this.color);

  final String statName;
  final Color color;
}
