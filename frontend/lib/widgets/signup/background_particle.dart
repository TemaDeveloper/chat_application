import 'package:flutter/material.dart';

class BackgroundParticle extends StatelessWidget {
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final double opacity;
  final double width;
  final double height;
  final Color color;

  const BackgroundParticle({
    super.key,
    this.top,
    this.bottom,
    this.left,
    this.right,
    required this.opacity,
    required this.width,
    required this.height,
    required this.color,
  }) : assert(
          (top != null || bottom != null) && (left != null || right != null),
          'At least one of top/bottom and one of left/right must be provided.',
        );

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Opacity(
        opacity: opacity,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
