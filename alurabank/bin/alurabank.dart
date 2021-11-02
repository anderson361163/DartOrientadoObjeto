
import '../lib/ContaCorrente.dart';
import '../lib/Cliente.dart';
import 'dart:io';
import 'dart:core';
void main(){

  //---------------------------------------

  //OBJETOS E VARIAVEIS DE TESTE

  ContaCorrente contaFelipe = new ContaCorrente();
  ContaCorrente contaMichel = new ContaCorrente();

  Cliente michel = new Cliente('68036536099','Michel Santos Matias', 'Analista de Teste');
  Cliente felipe = new Cliente('05530714080', 'Felipe Cardoso da Silva', 'Analista de Sistemas');

  contaFelipe.titular = felipe;
  contaFelipe.agencia = 123;
  contaFelipe.conta = 145;
//felipe.saldo = 10.0;
  contaFelipe.chequeEspecial = -150;

  //---------------------------------------

  contaMichel.titular = michel;
  contaMichel.agencia = 362;
  contaMichel.conta = 147;
  contaMichel.chequeEspecial = -110;
//michel.saldo = 80.0;

  //---------------------------------------

  print('---------------------------');
  print('Testando o toString()');

  print(felipe.toString());
  print(contaFelipe.toString());



  print('---------------------------');

  print('Testando métodos');

  print('\n');

  print('Saldo de ${contaFelipe.titular.nome}: ${contaFelipe.saldo}');
  print('Saque de 80 da conta do Felipe');
  contaFelipe.saque(80.0);

  print('Saldo de ${contaFelipe.titular.nome}: ${contaFelipe.saldo}');

  print('\n');

  print('Saldo de ${contaMichel.titular.nome}: ${contaMichel.saldo}');
  print('Saque de 130');
  contaMichel.saque(130.0);

  print('Saldo de ${contaMichel.titular.nome}: ${contaMichel.saldo}');

  print('---------------------------');

  print('Realizando deposito');

  contaMichel.deposito(-1);
  contaMichel.deposito(70);
  
  print('---------------------------');

 /* print('Exibe o tipo da váriavel que entrou pelo teclado');

  print('Digite seu nome(aceita qualquer coisa): ');
  var entrada = stdin.readLineSync();
  print(entrada.runtimeType);

  print('Você escreveu a seguinte mensagem: $entrada');

  print('---------------------------');*/

  print('Calculando data de Nascimento');

  var hoje = DateTime.now();
  var aniversario = DateTime.utc(1969, 1, 1);

  int diasDeVida =  hoje.difference(aniversario).inDays;

  print('Está data vai funcionar? $diasDeVida');

  print('---------------------------');
  print('Testando atributos estáticos');
  int qtdClientesBanco = Cliente.totalClientes;
  print('Quantidade de clientes no banco: $qtdClientesBanco');
  print('---------------------------');
}




