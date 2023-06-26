import 'package:flutter/material.dart';

class FrontClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 430;
    final double _yScaling = size.height / 113;
    path.lineTo(0 * _xScaling, 4.8937 * _yScaling);
    path.cubicTo(
      0 * _xScaling,
      4.8937 * _yScaling,
      11.825 * _xScaling,
      14.9035 * _yScaling,
      11.825 * _xScaling,
      14.9035 * _yScaling,
    );
    path.cubicTo(
      23.65 * _xScaling,
      24.9134 * _yScaling,
      47.3 * _xScaling,
      44.9331 * _yScaling,
      72.025 * _xScaling,
      50.939 * _yScaling,
    );
    path.cubicTo(
      95.675 * _xScaling,
      56.9449 * _yScaling,
      119.325 * _xScaling,
      48.937 * _yScaling,
      142.975 * _xScaling,
      38.9272 * _yScaling,
    );
    path.cubicTo(
      167.7 * _xScaling,
      28.9173 * _yScaling,
      191.35 * _xScaling,
      16.9055 * _yScaling,
      215 * _xScaling,
      8.89764 * _yScaling,
    );
    path.cubicTo(
      238.65 * _xScaling,
      0.889764 * _yScaling,
      262.3 * _xScaling,
      -3.11417 * _yScaling,
      287.025 * _xScaling,
      2.89173 * _yScaling,
    );
    path.cubicTo(
      310.675 * _xScaling,
      8.89764 * _yScaling,
      334.325 * _xScaling,
      24.9134 * _yScaling,
      357.975 * _xScaling,
      28.9173 * _yScaling,
    );
    path.cubicTo(
      382.7 * _xScaling,
      32.9213 * _yScaling,
      406.35 * _xScaling,
      24.9134 * _yScaling,
      418.175 * _xScaling,
      20.9095 * _yScaling,
    );
    path.cubicTo(
      418.175 * _xScaling,
      20.9095 * _yScaling,
      430 * _xScaling,
      16.9055 * _yScaling,
      430 * _xScaling,
      16.9055 * _yScaling,
    );
    path.cubicTo(
      430 * _xScaling,
      16.9055 * _yScaling,
      430 * _xScaling,
      113 * _yScaling,
      430 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      430 * _xScaling,
      113 * _yScaling,
      418.175 * _xScaling,
      113 * _yScaling,
      418.175 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      406.35 * _xScaling,
      113 * _yScaling,
      382.7 * _xScaling,
      113 * _yScaling,
      357.975 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      334.325 * _xScaling,
      113 * _yScaling,
      310.675 * _xScaling,
      113 * _yScaling,
      287.025 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      262.3 * _xScaling,
      113 * _yScaling,
      238.65 * _xScaling,
      113 * _yScaling,
      215 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      191.35 * _xScaling,
      113 * _yScaling,
      167.7 * _xScaling,
      113 * _yScaling,
      142.975 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      119.325 * _xScaling,
      113 * _yScaling,
      95.675 * _xScaling,
      113 * _yScaling,
      72.025 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      47.3 * _xScaling,
      113 * _yScaling,
      23.65 * _xScaling,
      113 * _yScaling,
      11.825 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      11.825 * _xScaling,
      113 * _yScaling,
      0 * _xScaling,
      113 * _yScaling,
      0 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      113 * _yScaling,
      0 * _xScaling,
      4.8937 * _yScaling,
      0 * _xScaling,
      4.8937 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      4.8937 * _yScaling,
      0 * _xScaling,
      4.8937 * _yScaling,
      0 * _xScaling,
      4.8937 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}


class BackClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 430;
    final double _yScaling = size.height / 113;
    path.lineTo(0 * _xScaling, 20.543 * _yScaling);
    path.cubicTo(
      0 * _xScaling,
      20.543 * _yScaling,
      17.9167 * _xScaling,
      13.939 * _yScaling,
      17.9167 * _xScaling,
      13.939 * _yScaling,
    );
    path.cubicTo(
      35.8333 * _xScaling,
      7.33491 * _yScaling,
      71.6667 * _xScaling,
      -5.87322 * _yScaling,
      107.5 * _xScaling,
      2.9322 * _yScaling,
    );
    path.cubicTo(
      143.333 * _xScaling,
      11.7376 * _yScaling,
      179.167 * _xScaling,
      42.5566 * _yScaling,
      215 * _xScaling,
      60.1675 * _yScaling,
    );
    path.cubicTo(
      250.833 * _xScaling,
      77.7783 * _yScaling,
      286.667 * _xScaling,
      82.181 * _yScaling,
      322.5 * _xScaling,
      71.1742 * _yScaling,
    );
    path.cubicTo(
      358.333 * _xScaling,
      60.1675 * _yScaling,
      394.167 * _xScaling,
      33.7512 * _yScaling,
      412.083 * _xScaling,
      20.543 * _yScaling,
    );
    path.cubicTo(
      412.083 * _xScaling,
      20.543 * _yScaling,
      430 * _xScaling,
      7.33491 * _yScaling,
      430 * _xScaling,
      7.33491 * _yScaling,
    );
    path.cubicTo(
      430 * _xScaling,
      7.33491 * _yScaling,
      430 * _xScaling,
      113 * _yScaling,
      430 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      430 * _xScaling,
      113 * _yScaling,
      412.083 * _xScaling,
      113 * _yScaling,
      412.083 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      394.167 * _xScaling,
      113 * _yScaling,
      358.333 * _xScaling,
      113 * _yScaling,
      322.5 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      286.667 * _xScaling,
      113 * _yScaling,
      250.833 * _xScaling,
      113 * _yScaling,
      215 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      179.167 * _xScaling,
      113 * _yScaling,
      143.333 * _xScaling,
      113 * _yScaling,
      107.5 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      71.6667 * _xScaling,
      113 * _yScaling,
      35.8333 * _xScaling,
      113 * _yScaling,
      17.9167 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      17.9167 * _xScaling,
      113 * _yScaling,
      0 * _xScaling,
      113 * _yScaling,
      0 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      113 * _yScaling,
      0 * _xScaling,
      20.543 * _yScaling,
      0 * _xScaling,
      20.543 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      20.543 * _yScaling,
      0 * _xScaling,
      20.543 * _yScaling,
      0 * _xScaling,
      20.543 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
