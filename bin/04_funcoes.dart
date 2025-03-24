import 'dart:io';

void main(List<String> arguments){
  print('-' * 30);
  print('FUNÇÕES');
  print('-' * 30);

  print('a) Função sem retorno e sem parâmetros');
  imprimir();
  print('-' * 30);
  
  print('b) Função sem retorno e com parâmetros');
  imprimirNome('Gustavo');
  print('-' * 30);

  print('c) Função com retorno e sem parâmetros');
  print(retorno());
  print('-' * 30);

  print('d) Função com retorno e com parâmetros');
  print(retornoNome('Gustavo'));
  print('-' * 30);

  print('e) Função com um dos parâmetros opcionais');
  parametroOpcional('Gustavo');
  parametroOpcional('Cauã', 18);
  print('-' * 30);

  print('f) Arrow function');
  print(funcaoInline());  
  print('-' * 30);

  print('g) Função anônima');  
  funcaoAnonima();
  print('-' * 30);

  print('h) Função lambda');
  print(funcaoLambda('Gustavo'));
  print('-' * 30);
}

/* Abstração das funções

  tipoRetorno nomeFuncao([parâmetros]){
    ..
  }
*/

/* Possibilidade de funções: */

// a) Função sem retorno e sem parâmetros
void imprimir(){
  print('Olá mundo!');
}

// b) Função sem retorno e com parâmetros
void imprimirNome(String nome){
  print('Olá $nome!');
}

// c) Função com retorno e sem parâmetros
String retorno(){
  return 'Olá mundo!';
}

// d) Função com retorno e com parâmetros
String retornoNome(String nome){
  return 'Olá $nome!';
}

// e) Função com um dos parâmetros opcionais
void parametroOpcional(String nome, [int idade = 0]){  
  if(idade != 0){
    print('Olá $nome, você possui $idade anos de idade.');
  }else{
    print('Olá $nome!');
  }
}

// f) Arrow function
String funcaoInline() => 'Ola mundo!';

// g) Função anônima
var funcaoAnonima = (){
  print("Olá mundo!");
};

//  h) Função labda
String funcaoLambda(String nome) => 'Olá $nome!';