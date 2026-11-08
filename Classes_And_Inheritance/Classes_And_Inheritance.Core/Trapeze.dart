import 'Triangle.dart';

class Trapeze extends Triangle {
  late double _d;

  Trapeze(String nameof, double a, double b, double c, double d, double h)
    : super(nameof, a, b, c, h) {
    name = nameof;
    A = a;
    B = b;
    C = c;
    D = d;
    H = h;
  }

  double get D => _d;

  set D(double value) {
    _d = _validateD(value);
  }

  @override
  double getArea() => (B + D) * H / 2;

  @override
  double getPerimeter() => A + B + C + D;

  double _validateD(double d) {
    if (d <= 0) {
      throw Exception("El lado: $d no es válido.");
    }
    return d;
  }
}