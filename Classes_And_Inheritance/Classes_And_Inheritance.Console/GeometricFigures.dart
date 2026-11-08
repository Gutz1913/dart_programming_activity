import 'dart:math';

import '../Classes_And_Inheritance.Core/Circle.dart';
import '../Classes_And_Inheritance.Core/GeometricFigure.dart';
import '../Classes_And_Inheritance.Core/Kite.dart';
import '../Classes_And_Inheritance.Core/Parallelogram.dart';
import '../Classes_And_Inheritance.Core/Rhombus.dart';
import '../Classes_And_Inheritance.Core/Square.dart';
import '../Classes_And_Inheritance.Core/Trapeze.dart';
import '../Classes_And_Inheritance.Core/Triangle.dart';
import '../Classes_And_Inheritance.Core/Rectangle.dart';

void main() {
  try {
    var circle = Circle('Circle', 5);
    var square = Square('Square', 10);
    var rhombus = Rhombus('Rhombus', 5, 7, 10);
    var kite = Kite('Kite', 7, 6, 5, 8);
    var rectangle = Rectangle('Rectangle', 4.569, 67.790);
    var parallelogram = Parallelogram('Parallelogram', 14.65, 54.67, 23.09);
    var triangle = Triangle('Triangle', 45.56, 12.34, 27.09, 15);
    var trapeze = Trapeze('Trapeze', 10, 20, 30, 40, 20);

    var figures = <GeometricFigure> [
      circle,
      square,
      rhombus,
      kite,
      rectangle,
      parallelogram,
      triangle,
      trapeze
    ];

    print('');
    for (var figure in figures) {
      print(figure.ToString());
    }
    print('');    
  } catch (ex) {
    print(ex);
  }
}