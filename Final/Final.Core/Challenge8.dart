/* DESAFÍO 8 => CÁLCULO DEL FACTORIAL DE UN NÚMERO
Construir un programa que imprima el factorial de un número dado. La función factorial se representa como:
n! = 1x2x3x4x....x(n - 1) x n
Es decir, que factorial de 5 = 1 x 2 x 3 x 4 x 5 = 120.
• Prueba 1 => Al ejecutar el programa debe mostrar lo siguiente:
Ingrese número: 5
El factorial es: 120
• Prueba 2 => Al ejecutar el programa debe mostrar lo siguiente:
Ingrese número: 20
El factorial es: 2432902008176640000 */

import '../../Shared/MyMath.dart';
import '../../Shared/PrintExtension.dart';

class Challenge8 {
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
        print('****** EJERCICIO DE FACTORIAL ******');
        print('');

        var n = PrintExtension.getInt('Ingrese número: ');
        
        if (n < 0) {
          throw Exception('No se puede calcular el factorial de un número negativo.');
        }

        var factorial = MyMath.factorial(n);
        print('');
        
        // Usamos toInt() para mostrar el número sin decimales tal como lo hacía :N0 en C#
        print('>>> $n! = ${factorial.toInt()} <<<');
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
}