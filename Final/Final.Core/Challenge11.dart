/* DESAFÍO 11 => SERIE FIBONACCI
Construir un programa que imprima los N primeros números de la serie Fibonacci, la cual está representada por:
0, 1, 1, 2, 3, 5, 8, 13, 21,...
• Prueba: Al ejecutar el programa debe mostrar lo siguiente:
Cuantos términos quiere: 20
0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597 2584 4181 
*/

import 'dart:io';

import '../../Shared/PrintExtension.dart';

class Challenge11 {
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
        print('****** EJERCICIO DE SERIE FIBONACCI ******');
        print('');

        var n = PrintExtension.getInt('Cuantos términos quiere (mínimo 2): ');

        if (n < 2) {
          throw Exception('El número de términos debe ser al menos 2.');
        }

        double a = 0;
        double b = 1;
        print('');

        // Simulando el formato tabulado y de ancho fijo de C# ({a,5:N0}{b,10:N0})
        var formattedA = a.toInt().toString().padLeft(5);
        var formattedB = b.toInt().toString().padLeft(10);

        stdout.write('>>> $formattedA$formattedB');

        for (int i = 2; i < n; i++) {
          double c = a + b;
          var formattedC = c.toInt().toString().padLeft(10);
          stdout.write('$formattedC ');
          a = b;
          b = c;
        }
        stdout.write('\t<<<');

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