import 'dart:io';

import '../Shared/PrintExtension.dart';

void main() {
  String? answer;
  List<String> options = ['s', 'n'];

  print(':::::::::::::::::::::::::::::::::');
  print(':::::: EJERCICIO DE BUCLES ::::::');
  print(':::::::: SERIE FIBONACCI ::::::::');
  print(':::::::::::::::::::::::::::::::::');

  do {
    try {
      var n = PrintExtension.getInt('Cuantos términos desea? (mínimo 2): ');

      if (n < 2) {
        throw Exception('El número de términos debe ser al menos 2.');
      }

      double a = 0;
      double b = 1;

      // Usamos toInt() para imprimir sin decimales tal como hacía :N0 en C#
      stdout.write('${a.toInt()}\t${b.toInt()}\t');

      for (int i = 2; i < n; i++) {
        double c = a + b;
        stdout.write('${c.toInt()}\t');
        a = b;
        b = c;
      }
      print('');
    } catch (ex) {
      print('Error: $ex');
    }
    do {
      answer = PrintExtension.getValidOptions(
        '¿Deseas continuar? [S]í, [N]o?: ',
        options,
      );
    } while (answer == null || !options.any((x) => x.toLowerCase() == answer!.toLowerCase()));
  } while (answer!.toLowerCase() == 's');
  print(':::::: GAME OVER ::::::');
}