import 'dart:io';

void main(List<String> arguments){
  print('_' * 60);
  print('Manipulando Listas');
  print('_' * 60);

/* 
  # Coleções:
  -> Listas
  -> Mapas
  -> Filas
  -> Conjuntos

  # Formas de declarar Listas
  -> List<String> lista = new List<String>();
  -> List<String> lista = List<String>();
  -> var lista = List<String>();
  -> var lista = <String>[];
*/

  var nomes = ['Joaquim', 'Maria', 'Ana', 'Rivaldo', 'Narci', 'Paula'];
  print('Lista denominada "nomes": $nomes');

  print('_' * 60);

  // Adicionar item na lista
  nomes.add('Pedro');
  print("a) nomes.add('Pedro') --> $nomes");

  // Inserir item na lista com base no index
  nomes.insert(0, 'Rebeca');
  print("b) nomes.insert(0, 'Rebeca') --> $nomes");

  // Remover item da lista com base no index
  nomes.removeAt(1);
  print("c) nomes.removeAt(1) --> $nomes");

  // Números de itens da lista
  var qntElementos = nomes.length;
  print('d) nomes.length --> $qntElementos');

  print('_' * 60);
  print('Percorrendo a lista');

  // While
  var count = 0;
  var output = "";
  while(count < qntElementos){
    output = '$output | ${nomes[count]}';
    count++;
  }
  print('e) While --> $output |');

  // Do While
  count = 0;
  output = "";
  do {
    output = '$output | ${nomes[count]}';    
    count++;
  } while(count < qntElementos);
  print('f) Do While --> $output |');

  // For  
  output = "";
  for (var count = 0; count < qntElementos; count++) {
    output = '$output | ${nomes[count]}';    
  }
  print('g) For --> $output |');

  // Foreach
  output = "";
  for (var nome in nomes) {
    output = '$output | $nome';    
  }
  print('h) Foreach --> $output |');

  // Função da própria lista (função anônima)
  output = "";
  nomes.forEach(  (String nome){
    output = '$output | $nome'; 
  });
  print('i) nomes.forEach() [func. Anônima] --> $output |');

  // Função da própria lista (função lambda)
  output = "";
  nomes.forEach(  (nome) => output = '$output | $nome');
  print('j) nomes.forEach() [func. Labda]--> $output |');

}