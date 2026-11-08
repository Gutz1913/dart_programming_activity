/* DESAFÍO 1 => NUMERO ES PAR O IMPAR
Construir un programa que pida un número y luego diga si este número es par o impar
• Prueba 1 => Al ejecutar el programa debe mostrar lo siguiente:
Ingrese un número: 10
El número 10 es par
• Prueba 2 => Al ejecutar el programa debe mostrar lo siguiente
Ingrese un número: 7
El número 7 es impar */

import '../../Shared/PrintExtension.dart';

class Challenge1 {
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
        print('****** EJERCICIO DE NÚMEROS PARES O IMPARES ******');
        print('');

        var num = PrintExtension.getInt('Ingrese un número: ');
        if (num % 2 == 0) {
          print('>>> El número $num, es par <<<');
        } else {
          print('>>> El número $num, es impar <<<');
        }
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