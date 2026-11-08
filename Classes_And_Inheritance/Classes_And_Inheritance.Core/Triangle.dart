import 'Rectangle.dart';

class Triangle extends Rectangle {
  late double _c;
  late double _h;

  Triangle(String nameof, double a, double b, double c, double h)
    : super(nameof, a, b) {
    name = nameof;
    A = a;
    B = b;
    C = c;
    H = h;
  }

  double get C => _c;

  set C(double value) {
    _c = _validateC(value);
  }

  double get H => _h;

  set H(double value) {
    _h = _validateH(value);
  }

  @override
  double getArea() => B * H / 2;

  @override
  double getPerimeter() => A + B + C;

  double _validateC(double c) {
    if (c <= 0) {
      throw Exception("El lado: $c no es válido.");
    }
    return c;
  }

    double _validateH(double h) {
    if (h <= 0) {
      throw Exception("La altura: $h no es válida.");
    }
    return h;
  }
}