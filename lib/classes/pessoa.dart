class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  Pessoa(String nome, altura, peso){
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

  String calculadoraImc() {
    var imc = _peso / (_altura * _altura);
    var imcFormatado = imc.toStringAsFixed(2);
    return imcFormatado;
  }
}
