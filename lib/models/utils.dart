import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
/*  Criando um metodo dentro da class utils para ser utilizado dentro das outras classes
 Metodo será estatico , sendo assim não precisara ser instanciado em outra classespodendo ser chamado direto */

  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }

  /* Quando fizer o stdin.readLineSync não esquecer de colocar a condição ternstia no final  ?? ""  */
  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double? lerDouble() {
    var value = lerString();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static double? lerDoubleTextoComSaida(String texto, String valorSaida) {
    do {
      try {
        var value = lerStringComTexto(texto);
        if (value == valorSaida) {
          return null;
        }
        return double.parse(value);
      } catch (e) {
        print(texto);
      }
    } while (true);
  }

  static double? lerDoubleComtexto(String texto) {
    print(texto);
    return lerDouble();
  }
}
