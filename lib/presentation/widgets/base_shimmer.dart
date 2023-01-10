import 'package:flutter/material.dart';
import 'package:pokedex/common/common.dart';
import 'package:pokedex/utils/utils.dart';
import 'package:shimmer/shimmer.dart';

class BaseShimmer extends StatelessWidget {
  final Widget child;
  const BaseShimmer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.theme.backgroundColor,
      highlightColor: getRandomColor,
      child: child,
    );
  }
}
