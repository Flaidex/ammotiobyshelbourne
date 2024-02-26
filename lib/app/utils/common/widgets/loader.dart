import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loader extends StatelessWidget {
  const Loader({required this.size, required this.color, super.key});
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitFadingCube(
        color: color,
        size: size,
      ),
    );
  }
}
