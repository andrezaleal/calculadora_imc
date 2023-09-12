class DoubleInvalidoException implements Exception {
  @override
  String toString() {
    return "Peso inválido. Insira um valor numérico positivo válido.";
  }
}