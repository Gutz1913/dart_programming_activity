/* DESAFÍO 12 => ¿ES PRIMO?
Construir un programa que pida un número por pantalla y luego diga si es primo o no.
• Prueba 1: Al ejecutar el programa debe mostrar lo siguiente:
Ingrese número: 997
El número: 997, SI es primo
• Prueba 2: Al ejecutar el programa debe mostrar lo siguiente:
Ingrese número: 9
El número: 9, NO es primo */

import '../../Shared/MyMath.dart';
import '../../Shared/PrintExtension.dart';

class Challenge12 {
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
        print('****** EJERCICIO DE NÚMEROS PRIMOS ******');
        print('');

        var n = PrintExtension.getInt('Ingrese un número: ');

        // Suponiendo que MyMath.isPrime ya fue definido previamente en las utilidades
        var isPrime = MyMath.isPrime(n);
        print('');

        print('>>> El número: $n ${isPrime ? 'SI' : 'NO'} es primo <<<');

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