import 'dart:io';

void main(List<String> arguments) {
  print('Informe o seu nome:');
  var nome = stdin.readLineSync();

  print('Informe sua idade:');
  var idade = int.parse(stdin.readLineSync()!);

  print('Informe o seu salário:');
  var salario = double.parse(stdin.readLineSync()!);

  print('Meu nome é $nome, tenho $idade anos de idade e meu salario é $salario reais');

  /* Tipos de variaveis: DYNAMIC
    dynamic y = 'Roberto';
    y = 10;
    y = 99.9;
    y = false;  
  */  
}
