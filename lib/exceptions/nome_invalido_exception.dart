class NomeInvalidoException implements Exception{
  String error ()=> "Nome Invalido";
  @override
  String toString(){
      return  "NomeInvalidoException: ${error()}";

  }
}