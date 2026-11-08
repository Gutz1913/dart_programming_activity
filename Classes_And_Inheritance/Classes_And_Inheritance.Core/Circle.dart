import 'dart:math';

import 'GeometricFigure.dart';

class Circle extends GeometricFigure {
  late double _r;

  Circle(String nameof, double r) {
    name = nameof;
    R = r;
  }

  double get R => _r;

  set R(double value) {
    _r = _validateR(value);
  }

  @override
  double getArea() => pi * pow(R, 2);

    @override
  double getPerimeter() => 2 * pi * R;

  double _validateR(double r) {
    if (r <= 0) {
      throw Exception("El radio: $r no es válido.");
    }
    return r;
  }
}