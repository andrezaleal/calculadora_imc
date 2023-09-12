class NomeInvalidoException implements Exception {
  String error() => "Nome inválido. Por favor, insira apenas letras.";
  @override
  String toString() {
    return "NomeInvalidoException: ${error()}";
  }
}
