import 'package:flutter/material.dart';
class CustomClipPath extends CustomClipper<Path> {
  var radius=10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0,200);
    path.lineTo(200,200);
    path.lineTo(260,0);
    path.lineTo(30, 0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}