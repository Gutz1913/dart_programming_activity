abstract class GeometricFigure {
  String name = '';
  double getArea();
  double getPerimeter();

  @override
  String ToString() {
    final formattedName = name.padRight(10);
    final formattedArea = getArea().toStringAsFixed(5).padLeft(15);
    final formattedPerimeter = getPerimeter().toStringAsFixed(5).padLeft(15);

    return '$formattedName\t => Area.....:\t$formattedArea   Perimeter:\t$formattedPerimeter';
  }
}