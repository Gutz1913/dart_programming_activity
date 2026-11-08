/* DESAFÍO 10 => ECUACIONES CUADRÁTICAS
Construir un programa que resuelva los valores de X para una ecuación cuadrática
• Prueba 1 => Al ejecutar el programa debe mostrar lo siguiente:
Ingrese valor de a: 1
Ingrese valor de b: 3
Ingrese valor de c: 2
x1: -1,00000
x2: -2,00000
• Prueba 2 => Al ejecutar el programa debe mostrar lo siguiente:
Ingrese valor de a: 2
Ingrese valor de b: 8
Ingrese valor de c: 3
x1: -0,41886
x2: -3,58114 */

import 'dart:math';

import '../../Shared/PrintExtension.dart';

class Challenge10 {
  void Run() {
    List<String> options = ['s', 'n'];
    String? answer;

    do {
      try {
        print('');
        print('::::::::::::::::::::::::::::::::::::::::::::::::::::::::');
        print('::::::::: DESAFÍOS DE PROGRAMACIÓN BÁSICA DART :::::::::');
        print('::::::::::::::::::::::::::::::::::::::::::::::::::::::::');
        print('');
        print('****** EJERCICIO DE ECUACIONES CUADRÁTICAS ******');
        print('');

        var a = PrintExtension.getDouble('Ingrese valor de a: ');
        var b = PrintExtension.getDouble('Ingrese valor de b: ');
        var c = PrintExtension.getDouble('Ingrese valor de c: ');
        
        var solution = _quadraticEquation(a, b, c);
        print('');
        
        var formattedX1 = solution.x1.toStringAsFixed(5);
        var formattedX2 = solution.x2.toStringAsFixed(5);

        print('>>> X1 = $formattedX1 <<<');
        print('>>> X2 = $formattedX2 <<<');


        print('');
      } catch (ex) {
        print("Error: $ex");
      }

      do {
        answer = PrintExtension.getValidOptions(
          "¿Desea continuar? [S]í, [N]o?: ",
          options,
        );
      } while (answer == null ||
          !options.any((x) => x.toLowerCase() == answer!.toLowerCase()));
    } while (answer!.toLowerCase() == 's');
    print(':::::: GAME OVER ::::::');
  }

  QuadraticEquationSolution _quadraticEquation(double a, double b, double c) {
    double discriminant = (b * b) - (4 * a * c);
    if (discriminant < 0) {
      throw Exception('La ecuación no tiene soluciones reales (discriminante negativo).');
    }

    double x1 = (-b + sqrt(discriminant)) / (2 * a);
    double x2 = (-b - sqrt(discriminant)) / (2 * a);

    return QuadraticEquationSolution(x1, x2);
  }
}

class QuadraticEquationSolution {
  final double x1;
  final double x2;

  QuadraticEquationSolution(this.x1, this.x2);
}