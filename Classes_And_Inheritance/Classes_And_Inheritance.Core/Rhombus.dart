import 'Square.dart';

class Rhombus extends Square {
  late double _d1;
  late double _d2;

  Rhombus(String nameof, double a, double d1, double d2) : super(nameof, a) {
    name = nameof;
    D1 = d1;
    D2 = d2;
    A = a;
  }

  double get D1 => _d1;

  set D1(double value) {
    _d1 = _validateD1(value);
  }

  double get D2 => _d2;

  set D2(double value) {
    _d2 = _validateD2(value);
  }

  @override
  double getArea() => D1 * D2 / 2;

  @override
  double getPerimeter() => 4 * A;

  double _validateD1(double d1) {
    if (d1 <= 0) {
      throw Exception("La diagonal: $d1, no es válida.");
    }
    return d1;
  }

    double _validateD2(double d2) {
    if (d2 <= 0) {
      throw Exception("La diagonal: $d2, no es válida.");
    }
    return d2;
  }
}