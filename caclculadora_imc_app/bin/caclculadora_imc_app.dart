import 'dart:io' show stdin;

import 'package:caclculadora_imc_app/classes/pessoas.dart';
void main(List<String> arguments) {
  print("Digite seu nome:");
  String nome = stdin.readLineSync()!;

  print("Digite seu peso em kg:");
  double peso = double.parse(stdin.readLineSync()!);

  print("Digite sua altura em metros:");
  double altura = double.parse(stdin.readLineSync()!);

  Pessoa pessoa = Pessoa(nome, peso, altura);

  double imc = pessoa.calcularIMC();
  String classificacao = pessoa.classificarIMC();

  print("${pessoa.nome}, seu IMC é: ${imc.toStringAsFixed(2)}");
  print("Classificação: $classificacao");
}
