/* DESAFÍO 9 => SERIE DE TAYLOR 
Construir un programa que calcule los n primeros términos de la serie de Taylor
• Prueba 1 => Al ejecutar el programa debe mostrar lo siguiente:
Cuantos términos desea: 20
Digita el valor de x: 1
f(x) = 0.36788
• Prueba 2 => Al ejecutar el programa debe mostrar lo siguiente:
Cuantos términos desea: 300
Digita el valor de x: 8
f(x) = 0.00034 */

import 'dart:math';

import '../../Shared/MyMath.dart';
import '../../Shared/PrintExtension.dart';

class Challenge9 {
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
        print('****** EJERCICIO DE LA SERIE DE TAYLOR ******');
        print('');

        var n = PrintExtension.getInt('Ingrese el número de términos: ');
        var x = PrintExtension.getDouble('Ingrese el valor de x........: ');
        
        var taylor = _taylor(x, n);
        print('');        
        // Simulando el formato :N5 con 5 decimales
        var formattedTaylor = taylor.toStringAsFixed(5);
        print('>>> f($x) = $formattedTaylor <<<');
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

  double _taylor(double x, int n) {
    double sum = 0;
    int signo = 1;
    for (int i = 0; i < n; i++) {
      sum += (pow(x, i) / MyMath.factorial(i)) * signo;
      signo *= -1;
    }
    return sum;
  }
}