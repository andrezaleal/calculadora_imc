import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:calculadora_imc/exceptions/double_invalido_exception.dart';
import 'package:calculadora_imc/exceptions/nome_invalido_exception.dart';
import 'package:test/test.dart';

void main() {
 test('Teste de cálculo de IMC', () {
    final pessoa = Pessoa("Denis", 1.75, 50.0);

    final resultado = pessoa.calculadoraImc();

    expect(resultado, "16.33"); 
  });

test('Teste da exceção NomeInvalidoException', () {
    expect(() {
      throw NomeInvalidoException();
    }, throwsA(TypeMatcher<NomeInvalidoException>()));
  });

test('Teste da exceção DoubleInvalidoException', () {
    expect(() {
      throw DoubleInvalidoException();
    }, throwsA(TypeMatcher<DoubleInvalidoException>()));
  });
}
