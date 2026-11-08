import '../Shared/PrintExtension.dart';

// *** CONDITIONALS ***

void main() {
  List<String> options = ['s', 'n'];
  String? answer;

  print('::::::::::::::::::::::::::::::::::::');
  print(':::::: EJERCICIO DE MULTIPLOS ::::::');
  print('::::::::::::::::::::::::::::::::::::');

  do {
    try {
      var number1 = PrintExtension.getInt('Ingrese el primer número.: ');
      var number2 = PrintExtension.getInt('Ingrese el segundo número: ');

      if (number1 % number2 == 0) {
        print('$number1 es múltiplo de $number2.');
      } else {
        print('$number1 no es múltiplo de $number2.');
      }
    } catch (ex) {
      print("Error: $ex");
    }

    do {
      answer = PrintExtension.getValidOptions("¿Desea continuar? [S]í, [N]o?: ", options);
    } while (answer == null || !options.any((x) => x.toLowerCase() == answer!.toLowerCase()));
  } while (answer!.toLowerCase() == 's');
  print(':::::: GAME OVER ::::::');
}
// *** END CONDITIONALS ***


// *** OPERATORS ***

// void main() {
//   List<String> options = ['s', 'n'];
//   String? answer;

//   print(':::::::::::::::::::::::::::::::::::');
//   print('::::: EJERCICIO DE OPERADORES :::::');
//   print(':::::::::::::::::::::::::::::::::::');

//   do {
//     try {
//       var n1 = PrintExtension.getInt('Ingrese el primer número.: ');
//       var n2 = PrintExtension.getInt('Ingrese el segundo número: ');

//       var suma = CalcularSuma(n1, n2);
//       var resta = CalcularResta(n1, n2);
//       var multip = CalcularMultiplicacion(n1, n2);
//       var divis = CalcularDivision(n1, n2);

//       print('La suma es..........: $suma');
//       print('La resta es.........: $resta');
//       print('La multiplicación es: $multip');
//       print('La división es......: $divis');

//     } catch (ex) {
//       print("Error: $ex");
//     }
//     do {
//       answer = PrintExtension.getValidOptions("¿Desea continuar? [S]í, [N]o?: ", options);
//     } while (answer == null || !options.any((x) => x.toLowerCase() == answer!.toLowerCase()));
//   } while (answer!.toLowerCase() == 's');
//   print(':::::: GAME OVER ::::::');
// }


// double CalcularSuma(int n1, int n2) {
//   return (n1 + n2).toDouble();
// }

// double CalcularResta(int n1, int n2) {
//   return (n1 - n2).toDouble();
// }

// double CalcularMultiplicacion(int n1, int n2) {
//   return (n1 * n2).toDouble();
// }

// double CalcularDivision(int n1, int n2) {
//   if (n2 == 0) {
//     throw Exception('No se puede dividir por cero.');
//   }
//   return n1 / n2;
// }

// *** END OPERATORS ***