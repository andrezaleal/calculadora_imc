import 'dart:io';

import 'package:calculadora_imc/classes/console_utils.dart';
import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:calculadora_imc/exceptions/double_invalido_exception.dart';
import 'package:calculadora_imc/exceptions/nome_invalido_exception.dart';

void execute() {
  print('Bem vindo à calculadora Imc!');

  String nome = ConsoleUtils.lerStringComTexto("Digite seu nome:");

  try {
    if (nome.trim() == "" || !RegExp(r'^[a-zA-Z]+$').hasMatch(nome)) {
      throw NomeInvalidoException();
    }
  } on NomeInvalidoException {
    nome = "Usuário";
    print(NomeInvalidoException());
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  double? peso = ConsoleUtils.lerDoubleComTexto("Digite seu peso:");

  try {
    if (peso == null || peso <= 0) {
      throw DoubleInvalidoException();
    }
  } on DoubleInvalidoException {
    peso = 0;
    print(DoubleInvalidoException());
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  double? altura = ConsoleUtils.lerDoubleComTexto("Digite sua altura:");

  try {
    if (altura == null || altura <= 0) {
      throw DoubleInvalidoException();
    }
  } on DoubleInvalidoException {
    altura = 0;
    print(DoubleInvalidoException());
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  var pessoa = Pessoa(nome, altura, peso);
  print("O IMC do(a) ${pessoa.getNome()} é ${pessoa.calculadoraImc()}, a classificação desse IMC é ${pessoa.situacaoImc(double.parse(pessoa.calculadoraImc()))}");
}
