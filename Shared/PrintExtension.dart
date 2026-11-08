import 'dart:io';

class PrintExtension
{
  static int getInt(String message) {
    stdout.write(message);
    var input = stdin.readLineSync();
    var numberInt = int.tryParse(input ?? '');
    if (numberInt != null) {
      return numberInt;
    }
    throw Exception("El valor ingresado no es válido");
  }

  static double getDouble(String message) {
    stdout.write(message);
    var input = stdin.readLineSync();
    var numberDouble = double.tryParse(input ?? '');
    if (numberDouble != null) {
      return numberDouble;
    }
    throw Exception("El valor ingresado no es válido");
  }

  //Dart utiliza double para representar números de punto flotante
  static double getFloat(String message) {
    return getDouble(message);
  }

  //Dart utiliza double para alta precisión numerica por defecto
  static double getDecimal(String message) {
    return getDouble(message);
  }

  static String getString(String message) {
    stdout.write(message);
    var input = stdin.readLineSync();
    if (input != null && input.isNotEmpty) {
      return input;
    }
    throw Exception("El valor ingresado no es válido");
  }

  static String? getValidOptions(String message, List<String> options) {
    stdout.write(message);
    var answer = stdin.readLineSync();
    if (answer != null && options.any((x) => x.toLowerCase() == answer.toLowerCase())) {
      return answer;
    }
    return null;
  }
}