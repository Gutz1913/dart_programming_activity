/* DESAFÍO 6 => ENVÍO DE MERCANCÍA
Una empresa de envío de mercancías, tiene un plan de tarifas y descuentos sobre el valor del envío de mercancía de sus clientes:
• Tarifas:
    • Si el peso de la mercancía es inferior a 100 kg, la tarifa para el envío de ésta es de 20.000 pesos.
    •Si el peso de la mercancía está entre 100 y 150 kg, la tarifa para el envío de ésta es de 25.000 pesos.
    •Si el peso de la mercancía es superior a 150 kg y menor o igual a 200 kg, la tarifa para el envío de ésta es de 30.000 pesos.
    • Si el peso de la mercancía es superior a 200 kg, la tarifa es de 35.000 pesos y además por cada 10 kg adicionales se paga 2.000 pesos.
• Descuentos:
    • Si el valor de la mercancía está entre 300.000 y 600.000 pesos se hace un descuento del 10% sobre el valor del envío.
    • Si el valor de la mercancía es superior a 600.000 pero menor o igual a 1.000.000 de pesos se hace un descuento del 20% sobre el valor del envío.
    • Si el valor de la mercancía es superior a 1.000.000 se hace un descuento del 30% sobre el valor del envío.
• Promociones (solo hay dos tipos de pago):
    • Si es día de promoción (lunes) y paga con tarjeta propia del almacén, sólo paga el 50% del costo de envío.
    • Si paga en efectivo y el valor de la mercancía es superior a 1.000.000, sólo paga el 60% del costo de envío.
Si el cliente aplica a una promoción, no puede aplicar a un descuento. Se debe obtener el valor total del envío.
• Prueba 1 => Al ejecutar el programa debe mostrar lo siguiente:
Peso de la mercancía: 289
Valor de la mercancía: 780000
Es lunes [S]í [N]o: s
Tipo de pago [E]fectivo [T]arjeta: t
Tarifa: 51000
Promoción: 25500
Total a pagar: 25500
• Prueba 2 => Al ejecutar el programa debe mostrar lo siguiente:
Peso de la mercancía: 150
Valor de la mercancía: 1200000
Es lunes [S]í [N]o: n
Tipo de pago [E]fectivo [T]arjeta: t
Tarifa: 25000
Descuento: 7500
Total a pagar: 17500 */

import '../../Shared/PrintExtension.dart';

class Challenge6 {
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
        print('****** EJERCICIO DE ENVÍO DE MERCANCÍAS ******');
        print('');

        var weigth = PrintExtension.getDouble('Ingrese el peso de la mercancía.......: ');
        var value = PrintExtension.getDouble ('Ingrese el valor de la mercancía......: ');
        
        String isMonday;
        do {
          isMonday = PrintExtension.getValidOptions(
                  'Es lunes [S]í, [N]o?..................: ', options) ??
              '';
        } while (!options.any((x) => x.toLowerCase() == isMonday.toLowerCase()));

        var payMethods = ['e', 't'];
        String payMethod;
        do {
          payMethod = PrintExtension.getValidOptions(
                  'Tipo de pago [E]fectivo, [T]arjeta....: ', payMethods) ??
              '';
        } while (!payMethods.any((x) => x.toLowerCase() == payMethod.toLowerCase()));

        double fare = _calculateFare(weigth);

        double promotion = _calculatePromotion(fare, isMonday, payMethod, value);
        double discount = 0;
        
        if (promotion == 0) {
          discount = _calculateDiscount(fare, value);
        }

        print('');
        var formattedFare = fare.toStringAsFixed(2).padLeft(20);
        var formattedDisc = discount.toStringAsFixed(2).padLeft(20);
        var formattedPromo = promotion.toStringAsFixed(2).padLeft(20);
        var formattedTotal = (fare - discount - promotion).toStringAsFixed(2).padLeft(20);

        print('>>> Tarifa............................: $formattedFare <<<');
        print('>>> Descuento.........................: $formattedDisc <<<');
        print('>>> Promoción.........................: $formattedPromo <<<');
        print('>>> Total a pagar.....................: $formattedTotal <<<');

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

  double _calculatePromotion(double fare, String isMonday, String payMethod, double value) {
    if (isMonday.toLowerCase() == 's' && payMethod.toLowerCase() == 't') {
      return fare * 0.5;
    }

    if (payMethod.toLowerCase() == 'e' && value > 1000000.0) {
      return fare * 0.4;
    }
    return 0.0;
  }

  double _calculateDiscount(double fare, double value) {
    if (value >= 300000.0 && value <= 600000.0) {
      return fare * 0.1;
    }
    if (value > 600000.0 && value <= 1000000.0) {
      return fare * 0.2;
    }
    if (value > 1000000.0) {
      return fare * 0.3;
    } else {
      return 0.0;
    }
  }

  double _calculateFare(double weigth) {
    if (weigth < 100) {
      return 20000.0;
    }
    if (weigth >= 100 && weigth <= 150) {
      return 25000.0;
    }
    if (weigth > 150 && weigth <= 200) {
      return 30000.0;
    }
    int aditional = ((weigth - 200) ~/ 10);
    return 35000.0 + (aditional * 2000);
  }  
}