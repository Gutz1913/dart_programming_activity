import 'Square.dart';

class Rectangle extends Square {
  late double _b;

  Rectangle(String nameof, double a, double b) : super(nameof, a) {
    name = nameof;
    A = a;
    B = b;
  }

  double get B => _b;

  set B(double value) {
    _b = _validateB(value);
  }

  @override
  double getArea() => A * B;

  @override
  double getPerimeter() => 2 * (A + B);

  double _validateB(double b) {
    if (b <= 0) {
      throw Exception("El lado: $b no es válido.");
    }
    return b;
  }
}