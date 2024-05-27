// ignore: unused_import
import 'dart:convert';

import 'package:http/http.dart'as http;


double calcularDesconto(double valor , double desconto,  bool percentual){
  if(valor <= 0 ){
    throw ArgumentError("o Valor não pode ser zero");
  }
   if(desconto <= 0 ){
    throw ArgumentError("o Valor do desconto não  pode ser zero");
  }

 if (percentual) {
    return valor - ((valor * desconto) / 100);
 }
 return valor - desconto;

}

