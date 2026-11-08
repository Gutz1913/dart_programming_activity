/* DESAFÍO 15 => CALENDARIO DE UN AÑO
Construir un programa que imprima el calendario de un año. El programa debe tener en cuenta si el año es bisiesto o no y el día en que empieza y termina cada mes.
• Prueba => Al ejecutar el programa debe mostrar el calendario del año ingresado. */

import 'dart:io';

import '../../Shared/DateUtilities.dart';
import '../../Shared/PrintExtension.dart';

class Challenge15 {
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
        print('****** EJERCICIO DEL CALENDARIO ******');
        print('');

        var year = PrintExtension.getInt('Ingrese el año: ');
        print('\n' * 2);

        _showCalendar(year);
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

  void _showCalendar(int year) {
    print('***** AÑO: $year *****');

    List<String> months = [
      'ENERO', 'FEBRERO', 'MARZO', 'ABRIL', 'MAYO', 'JUNIO',
      'JULIO', 'AGOSTO', 'SEPTIEMBRE', 'OCTUBRE', 'NOVIEMBRE', 'DICIEMBRE'
    ];
    
    int i = 1;
    for (var month in months) {
      print('');
      print(month);
      print('Dom\tLun\tMar\tMie\tJue\tVie\tSab');
      
      var daysPerMonth = _getDaysPerMonth(year, i);
      var zellerDay = _zeller(year, i);
      var daysCounter = 0;

      for (int j = 0; j < zellerDay; j++) {
        stdout.write('\t');
        daysCounter++;
      }

      for (int day = 1; day <= daysPerMonth; day++) {
        stdout.write('$day\t');
        daysCounter++;
        if (daysCounter == 7) {
          daysCounter = 0;
          print('');
        }
      }
      print('');
      i++;
    }
  }

  int _getDaysPerMonth(int year, int month) {
    if (month == 2 && DateUtilities.isLeapYear(year)) {
      return 29;
    }

    List<int> daysPerMonth = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    return daysPerMonth[month];
  }

  int _zeller(int year, int month) {
    int a = (14 - month) ~/ 12;
    int y = year - a;
    int m = month + 12 * a - 2;
    int day = 1;
    int d = (day + y + (y ~/ 4) - (y ~/ 100) + (y ~/ 400) + ((31 * m) ~/ 12)) % 7;
    return d;
  }
}