import 'GeometricFigure.dart';

class Square extends GeometricFigure {
  late double _a;

  Square(String nameof, double a) {
    name = nameof;
    A = a;
  }

  double get A => _a;

  set A(double value) {
    _a = _validateA(value);
  }

  @override
  double getArea() => A * A;

    @override
  double getPerimeter() => 4 * A;

  double _validateA(double a) {
    if (a <= 0) {
      throw Exception("El lado: $a no es válido.");
    }
    return a;
  }
}