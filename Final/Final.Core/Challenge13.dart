/* DESAFÍO 13 => CÁLCULO DEL NÚMERO e
Hacer un programa que calcule el número natural e, dado el número de términos requeridos por el usuario.
• Prueba: Al ejecutar el programa debe mostrar lo siguiente:
Cuantos términos de precisión desea: 10
El valor de 'e' con 10 términos de precisión es: 2.7182815255731922
*/

import '../../Shared/MyMath.dart';
import '../../Shared/PrintExtension.dart';

class Challenge13 {
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
        print('****** EJERCICIO DEL NÚMERO e ******');
        print('');

        var n = PrintExtension.getInt('Cuantos términos de precisión desea: ');

        if (n <= 0) {
          throw Exception('El número de términos debe ser mayor a cero.');
        }

        var e = _calculateE(n);
        print('');
        print(">>> El valor de 'e' con $n términos de precisión es: $e <<<");
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

  double _calculateE(int n) {
    double sum = 0;
    for (int i = 0; i < n; i++) {
      sum += 1 / MyMath.factorial(i);
    }
    return sum;
  }
}