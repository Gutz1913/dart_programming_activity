/* DESAFÍO 5 => VALOR MATRÍCULA
Se desea obtener el valor de la matrícula de un estudiante, el cual se calcula de la siguiente manera en un subprograma:
• Si toma 20 o menos créditos, paga el crédito al valor normal.
• Si toma por encima de 20 créditos, se pagarán los créditos extras al doble de valor normal.
• Si el estudiante es de estrato 1, 2 o 3 recibe los siguientes descuentos:
    • Si el estrato es 1, el descuento es del 80%.
    • Si el estrato es 2, el descuento es del 50%.
    • Si el estrato es 3, el descuento es del 30%.
Además los estratos 1 y 2 reciben subsidio de alimentación y transporte de la siguiente manera (el cual se debe calcular en otro subprograma):
• Para el estrato 1, el subsidio de alimentación y transporte es igual a $200.000.
• Para el estrato 2, el subsidio de alimentación y transporte es igual a $100.000.
Se debe informar al usuario sobre el costo de la matrícula y el valor del subsidio.

• Prueba => Al ejecutar el programa debe mostrar lo siguiente:
Ingrese el número de créditos: 25
Ingrese el valor por crédito: 85000
Ingrese el estrato del estudiante: 2
Costo de la matrícula: 1'275.000
Valor del subsidio: 100000 */

import '../../Shared/PrintExtension.dart';

class Challenge5 {
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
        print('****** EJERCICIO DE VALOR DE MATRÍCULA ******');
        print('');

        var credits = PrintExtension.getInt('Ingrese el número de créditos.......: ');
        var creditValue = PrintExtension.getDouble('Ingrese el valor por crédito........: ');
        var stratum = PrintExtension.getInt('Ingrese el estrato del estudiante...: ');
        
        var registrationValue = _calculateRegistrationValue(credits, creditValue, stratum);
        var subsidy = _calculateSubsidy(stratum);
        print('');

        var formattedReg = registrationValue.toStringAsFixed(2).padLeft(20);
        var formattedSub = subsidy.toStringAsFixed(2).padLeft(20);

        print('>>> Costo de la matrícula..........: $formattedReg <<<');
        print('>>> Valor del subsidio.............: $formattedSub <<<');
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

  double _calculateSubsidy(int stratum) {
    if (stratum == 1) {
      return 200000.0;
    }
    if (stratum == 2) {
      return 100000.0;
    }
    return 0.0;
  }

  double _calculateRegistrationValue(int credits, double creditValue, int stratum) {
    double value;
    if (credits <= 20) {
      value = credits * creditValue;
    } else {
      value = (20 * creditValue) + ((credits - 20) * creditValue * 2.0);
    }

    if (stratum == 1) {
      return value * 0.2;
    }
    if (stratum == 2) {
      return value * 0.5;
    }
    if (stratum == 3) {
      return value * 0.7;
    }
    return value;
  }
}