/* DESAFÍO 3 => AÑO BISIESTO
Construir un programa que pida un año y luego determine si el año es bisiesto o no. 
Tenga en cuenta que los años bisiestos son los números múltiplos de 4, pero que no son múltiplos de 100 y si son múltiplos de 100 y múltiplos de 400 sí son bisiestos. 
• Prueba 1 => Al ejecutar el programa debe mostrar lo siguiente:
Ingrese el año que desea consultar: 1974
El año 1974, NO fue bisiesto.
• Prueba 2 => Al ejecutar el programa debe mostrar lo siguiente:
Ingrese el año que desea consultar: 2000
El año 2000, SI fue bisiesto.
• Prueba 3 => Al ejecutar el programa debe mostrar lo siguiente:
Ingrese el año que desea consultar: 2026
El año 2012, NO es bisiesto.
• Prueba 4 => Al ejecutar el programa debe mostrar lo siguiente:
Ingrese el año que desea consultar: 2028
El año 2028, SI va a ser bisiesto. */




import '../../Shared/DateUtilities.dart';
import '../../Shared/PrintExtension.dart';

class Challenge3 {
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
        print('****** EJERCICIO DEL AÑO BISIESTO ******');
        print('');

        var year = PrintExtension.getInt('Ingrese un año: ');
        var currentYear = DateTime.now().year;
        var message = '';

        if (year == currentYear) {
          message = 'es';
        } else if (year > currentYear) {
          message = 'va a ser';
        } else {
          message = 'fue';
        }

        var isLeapYear = DateUtilities.isLeapYear(year);
        print('>>> El año $year, ${isLeapYear ? 'SI' : 'NO'} $message bisiesto <<<');
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