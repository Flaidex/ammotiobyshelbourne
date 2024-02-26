import 'package:flutter/cupertino.dart';

class GetStartedPortraitClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    var path = Path();
    path.moveTo(0, height);
    path.lineTo(0.0, height * 0.32);
    path.quadraticBezierTo(
        width * 0.04, height * 0.18, width * 0.3, height * 0.18);
    path.quadraticBezierTo(
        width / 2, height * 0.18, width * 0.7, height * 0.18);
    path.quadraticBezierTo(width * 0.97, height * 0.18, width, 25.0);
    path.lineTo(width, 0.0);
    path.lineTo(width, height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
