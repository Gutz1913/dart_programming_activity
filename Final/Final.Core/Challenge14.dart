/* DESAFÍO 14 => CÁLCULO DEL NÚMERO PI
Hacer un programa que calcule el número PI, dado el número de términos requeridos por el usuario.
• Prueba => Al ejecutar el programa debe mostrar lo siguiente:
Cuantos términos de precisión desea: 800
El valor de 'pi' con  = 3.1403426540780757 */

import '../../Shared/PrintExtension.dart';

class Challenge14 {
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
        print('****** EJERCICIO DEL NÚMERO PI ******');
        print('');

        var n = PrintExtension.getInt(
          'Cuantos términos de precisión desea: ',
        );

        if (n <= 0) {
          throw Exception('El número de términos debe ser mayor a cero.');
        }

        var pi = _calculatePi(n);
        print('');

        // Simulando el formato de ancho fijo de C# ({pi,10})
        var formattedPi = pi.toString().padLeft(10);
        print(
          ">>> El valor de 'pi' con $n términos de precisión es: $formattedPi <<<",
        );

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

  double _calculatePi(int n) {
    double sum = 0;
    double den = 1;
    int sign = 1;
    for (int i = 0; i < n; i++) {
      double term = (1 / den) * sign;
      sum += term;
      den += 2;
      sign *= -1;
    }
    return sum * 4;
  }
}