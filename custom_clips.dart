import 'package:flutter/material.dart';


class Myclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0,size.height-50);
    var controllerpoint= Offset(0,size.height-20);
    var endpoint = Offset(size.width*.95, size.height*30);
    path.quadraticBezierTo(controllerpoint.dx, controllerpoint.dy, endpoint.dx, endpoint.dy);
    path.lineTo(size.width*.9, size.height);
    path.lineTo(size.width,0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}
