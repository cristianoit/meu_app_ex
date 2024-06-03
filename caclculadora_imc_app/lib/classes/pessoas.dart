 class Pessoa {

 String _nome;
  double _peso;
  double _altura;

  Pessoa(this._nome, this._peso, this._altura);

  // Getter para o nome
  String get nome => _nome;

  // Setter para o nome
  set nome(String nome) {
    if (nome.isNotEmpty) {
      _nome = nome;
    } else {
      print("Nome não pode ser vazio.");
    }
  }

  // Getters
  double get peso => _peso;
  double get altura => _altura;

  // Setters
  set peso(double peso) {
    if (peso > 0) {
      _peso = peso;
    } else {
      print("Peso deve ser maior que zero.");
    }
  }

  set altura(double altura) {
    if (altura > 0) {
      _altura = altura;
    } else {
      print("Altura deve ser maior que zero.");
    }
  }

  double calcularIMC() {
    return _peso / (_altura * _altura);
  }

  String classificarIMC() {
    double imc = calcularIMC();
    if (imc < 18.5) {
      return "Abaixo do peso";
    } else if (imc >= 18.5 && imc < 24.9) {
      return "Peso normal";
    } else if (imc >= 25 && imc < 29.9) {
      return "Sobrepeso";
    } else {
      return "Obesidade";
    }
  }
  }
 