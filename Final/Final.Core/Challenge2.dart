/* DESAFÍO 2 => NÚMERO MAYOR
Construir un programa que pida por pantalla 3 números y luego diga cúal es el mayor de los números ingresados
• Prueba => Al ejecutar el programa debe mostrar lo siguiente:
Ingrese el primer número: 45
Ingrese el segundo número: 23
Ingrese el tercer número: 12
El numero mayor es: 45 */

import '../../Shared/PrintExtension.dart';

class Challenge2 {
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
        print('****** EJERCICIO DEL NÚMERO MAYOR ******');
        print('');

        var n1 = PrintExtension.getInt('Ingrese el primer número.: ');
        var n2 = PrintExtension.getInt('Ingrese el segundo número: ');
        var n3 = PrintExtension.getInt('Ingrese el tercer número.: ');
        print('');

        if (n1 > n2 && n1 > n3) {
          print('>>> El número mayor es: $n1 <<<');
        } else if (n2 > n1 && n2 > n3) {
          print('>>> El número mayor es: $n2 <<<');
        } else if (n3 > n1 && n3 > n2) {
          print('>>> El número mayor es: $n3 <<<');
        } else {
          print('>>> Hay números iguales o no se puede determinar un único mayor <<<');
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