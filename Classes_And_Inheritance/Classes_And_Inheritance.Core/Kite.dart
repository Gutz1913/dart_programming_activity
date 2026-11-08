import 'Rhombus.dart';

class Kite extends Rhombus {
  late double _b;

  Kite(String nameof, double a, double d1, double d2, double b) : super(nameof, a, d1, d2) {
    name = nameof;
    D1 = d1;
    D2 = d2;
    A = a;
    B = b;
  }

  double get B => _b;

  set B(double value) {
    _b = _validateB(value);
  }

  @override
  double getArea() => D1 * D2 / 2;

  @override
  double getPerimeter() => 2 * A + B;

  double _validateB(double b) {
    if (b <= 0) {
      throw Exception("El lado: $b, no es válido.");
    }
    return b;
  }
}