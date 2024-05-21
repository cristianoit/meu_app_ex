class Aluno {
/* Criando Variaveis */
  String _nome = "";
   final List<double> _notas = [];

/* Criando construtor?? */
  Aluno(String nome) {
    _nome = nome;
  }

/*  obtendo nome do aluno por meio de gets e seters */

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  List<double> getNotas() {
    return _notas;
  }

  void adicionarNota(double nota) {
    _notas.add(nota);
  }

  double retornaMedia(){
    var totalNotas = 0.0;
    for (var nota in _notas) {
      totalNotas = totalNotas + nota;
    }
    var media =totalNotas / _notas.length;
    /* retornando um ternario com a condição que sefor 0 */
    return media.isNaN ? 0: media;
  }

  bool aprovado(double notaCorte){
    return retornaMedia() >= notaCorte;
  }
  
}
