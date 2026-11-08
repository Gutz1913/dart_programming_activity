import 'Rectangle.dart';

class Parallelogram extends Rectangle {
  late double _h;

  Parallelogram(String nameof, double a, double b, double h) : super(nameof, a, b) {
    name = nameof;
    A = a;
    B = b;
    H = h;
  }

  double get H => _h;

  set H(double value) {
    _h = _validateH(value);
  }

  @override
  double getArea() => B * H;

  @override
  double getPerimeter() => 2 * (A + B);

  double _validateH(double h) {
    if (h <= 0) {
      throw Exception("La altura: $h no es válida.");
    }
    return h;
  }
}