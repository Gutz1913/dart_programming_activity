/* DESAFÍO 7 => SERIE DE NÚMEROS, SUMATORIA Y PROMEDIO
Construir un programa que imprima N numeros, su sumatoria y su promedio.
• Prueba => Al ejecutar el programa debe mostrar lo siguiente:
Cuantos números desea: 100
1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
16 17 18 19 20 21 22 23 24 25 26 27 28 29
30 31 32 33 34 35 36 37 38 39 40 41 42 43
44 45 46 47 48 49 50 51 52 53 54 55 56 57
58 59 60 61 62 63 64 65 66 67 68 69 70 71
72 73 74 75 76 77 78 79 80 81 82 83 84 85
86 87 88 89 90 91 92 93 94 95 96 97 98 99
100
La suma es: 5050
El promedio es: 50
*/

import 'dart:io';

import '../../Shared/PrintExtension.dart';

class Challenge7 {
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
        print('****** EJERCICIO DE SUMA Y PROMEDIO ******');
        print('');

        var n = PrintExtension.getInt('Cuantos números desea: ');

        if (n <= 0) {
          throw Exception('El número de elementos debe ser mayor a cero.');
        }

        int sum = 0;
        for (int i = 1; i <= n; i++) {
          stdout.write('$i\t');
          sum += i;
        }

        // Usamos double para evitar la división entera si se desea mayor precisión,
        // o mantenemos la lógica exacta convirtiendo a double.
        var average = sum / n;

        print('');
        var formattedSum = sum.toString().padLeft(10);
        var formattedAvg = average.toStringAsFixed(0).padLeft(10);

        print('>>> La suma es.......................: $formattedSum <<<');
        print('>>> El promedio es...................: $formattedAvg <<<');
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