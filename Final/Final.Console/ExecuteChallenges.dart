import 'dart:io';

import '../../Shared/PrintExtension.dart';
import '../Final.Core/Challenge1.dart';
import '../Final.Core/Challenge2.dart';
import '../Final.Core/Challenge3.dart';
import '../Final.Core/Challenge4.dart';
import '../Final.Core/Challenge5.dart';
import '../Final.Core/Challenge6.dart';
import '../Final.Core/Challenge7.dart';
import '../Final.Core/Challenge8.dart';
import '../Final.Core/Challenge9.dart';
import '../Final.Core/Challenge10.dart';
import '../Final.Core/Challenge11.dart';
import '../Final.Core/Challenge12.dart';
import '../Final.Core/Challenge13.dart';
import '../Final.Core/Challenge14.dart';
import '../Final.Core/Challenge15.dart';

void main() {
  String? answer;
  List<String> options = ['s', 'n'];
  var opt = '';

  do {
    try {
      do {
        // Simulando limpieza de pantalla
        print('\n' * 2);
        print(':::::::::::::::::::::::::::::::::::::::::::::::::::');
        print('::::::::: DESAFÍOS DE PROGRAMACIÓN BÁSICA :::::::::');
        print(':::::::::::::::::::::::::::::::::::::::::::::::::::');
        print('');

        opt = _menu();

        switch (opt) {
          case '1':
            Challenge1().Run();
            break;
          case '2':
            Challenge2().Run();
            break;
          case '3':
            Challenge3().Run();
            break;
          case '4':
            Challenge4().Run();
            break;
          case '5':
            Challenge5().Run();
            break;
          case '6':
            Challenge6().Run();
            break;
          case '7':
            Challenge7().Run();
            break;
          case '8':
            Challenge8().Run();
            break;
          case '9':
            Challenge9().Run();
            break;
          case '10':
            Challenge10().Run();
            break;
          case '11':
            Challenge11().Run();
            break;
          case '12':
            Challenge12().Run();
            break;
          case '13':
            Challenge13().Run();
            break;
          case '14':
            Challenge14().Run();
            break;
          case '15':
            Challenge15().Run();
            break;
          default:
            if (opt != '0') {
              throw Exception('>>> El valor ingresado no es válido <<<');
            }
            break;
        }
      } while (opt != '0');
    } catch (ex) {
      print('Error: $ex');
    }

    do {
      answer = PrintExtension.getValidOptions(
        '¿Deseas continuar? [S]í, [N]o?: ',
        options,
      );
    } while (answer == null ||
        !options.any((x) => x.toLowerCase() == answer!.toLowerCase()));
  } while (answer!.toLowerCase() == 's');
  print(':::::: GAME OVER ::::::');
}

String _menu() {
  print('1. Determinar si un número es par o impar.');
  print('2. Determinar el número mayor.');
  print('3. Determinar si un año es bisiesto.');
  print('4. Calcular Descuento.');
  print('5. Calcular valor de matrícula.');
  print('6. Calcular tarifa para envío de mercancías.');
  print('7. Calcular suma y promedio.');
  print('8. Calcular el factorial de un número.');
  print('9. Calcular serie de taylor.');
  print('10. Calcular ecuaciones cuadráticas.');
  print('11. Generar la serie fibonacci.');
  print('12. Generar números primos.');
  print('13. Calcular el número \'e\'.');
  print('14. Generar el número \'PI\'.');
  print('15. Generar Calendario.');
  print('0. Salir.');
  stdout.write('Ingrese el número del ejercicio que desea ejecutar: ');
  return stdin.readLineSync() ?? '';
}