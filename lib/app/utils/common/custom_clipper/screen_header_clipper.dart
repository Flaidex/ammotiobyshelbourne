import 'package:flutter/material.dart';

class ScreenHeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    var path = Path();
    path.lineTo(0.0, height * 0.45);
    path.quadraticBezierTo(
        width * 0.04, height * 0.8, width * 0.2, height * 0.85 - 1);
    path.quadraticBezierTo(
        width / 2, height * 0.85, width * 0.85, height * 0.85);
    path.quadraticBezierTo(width * 0.96, height * 0.85, width, height - 5);
    path.lineTo(width, height);
    path.lineTo(width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
