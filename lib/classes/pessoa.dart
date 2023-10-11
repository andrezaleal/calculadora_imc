class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  Pessoa(String nome, altura, peso) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

   String situacaoImc(double imc) {
    if (imc < 16) {
      return "Magreza grave";
    } else if (imc > 16 && imc < 17) {
      return "Magreza moderada";
    } else if (imc > 17 && imc < 18.5) {
      return "Magreza leve";
    } else if (imc > 18.5 && imc < 25) {
      return "Saudável";
    } else if (imc > 25 && imc < 30) {
      return "Sobrepeso";
    } else if (imc > 30 && imc < 35) {
      return "Obesidade Grau I";
    } else if (imc > 35 && imc < 40) {
      return "Obesidade Garu II (severa)";
    } else {
      return "Obesidade Garu III (móbida)";
    }
  }

  String calculadoraImc() {
    var imc = _peso / (_altura * _altura);
    var imcFormatado = imc.toStringAsFixed(2);
    return imcFormatado;
  }

 
}
