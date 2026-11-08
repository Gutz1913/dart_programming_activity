/* DESAFÍO 4 => DESCUENTOS
Un almacén de escritorios hace los siguientes descuentos: si el cliente compra menos de 5 unidades se le da un
descuento del 10% sobre la compra; si el número de unidades es mayor o igual a cinco pero menos de 10 se le otorga un 20% y, si son 10 o más se le da un 40%.
Hacer un programa que determine cuánto debe pagar un cliente si el valor de cada escritorio es de $650.000.
• Prueba => Al ejecutar el programa debe mostrar lo siguiente
Ingrese el número de escritorios: 7
El valor a pagar es: 3'640.000 */

import '../../Shared/PrintExtension.dart';

class Challenge4 {
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
        print('****** EJERCICIO DE DESCUENTOS ******');
        print('');

        var desks = PrintExtension.getInt('Ingrese el número de escritorios: ');
        var valueToPay = _calculateValue(desks);
        print('');
        
        // Simulando el formato de moneda con 2 decimales y un ancho de 20
        var formattedValue = valueToPay.toStringAsFixed(2).padLeft(20);
        print('>>> El valor a pagar es: $formattedValue <<<');


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

  double _calculateValue(int desks) {
    double discount;
    if (desks < 5) {
      discount = 0.1;
    } else if (desks >= 5 && desks < 10) {
      discount = 0.2;
    } else {
      discount = 0.4;
    }
    // Con Dart manejamos los valores monetarios con tipo double
    return desks * 650000.0 * (1 - discount);
  }
}