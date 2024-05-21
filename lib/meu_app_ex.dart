import 'dart:convert';
import 'dart:io';

import 'package:meu_app_ex/exceptions/nome_invalido_exception.dart';
import 'package:meu_app_ex/models/Aluno.dart';
import 'package:meu_app_ex/models/Utils.dart';

void execute() {
  print("Bem vindo ao sistema de notas!!");
  String nome = ConsoleUtils.lerStringComTexto("Digite o nome do Aluno!!:");
  try {
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    }
  } on (NomeInvalidoException) {
    print(NomeInvalidoException);
  } catch (e) {
    print(e);
  }
  /* Colocando Exeções Customizadas metodo Throw */

  var aluno = Aluno(nome);
  double? nota;
  do {
    /* condição enquanto */
    nota = ConsoleUtils.lerDoubleTextoComSaida(
        "Digite a nota ou S para sair", "S");
    if (nota != null) {
      /* se aluno for diferente de nota faça */
      aluno.adicionarNota(nota);
    }
  } while (nota != null); /* faça */
  print("As notas digitadas foram:${aluno.getNotas()}");
  print("As  foi:${aluno.retornaMedia()}");
  if (aluno.aprovado(7)) {
    print("O aluno ${aluno.getNome()} aprovado");
  } else {
    print("O aluno ${aluno.getNome()} reprovado");
  }
}
