// 02 - Tipos primitivos
// Para usar um valor no Dart é necessário dizer o tipo de dado que aquela variável irá guardar.
// No Dart, as variáveis têm tipos. Os mais básicos são: int, double, bool, String, List, Set e Map.

void main() {
  // Integer (int) - Números inteiros
  int num = 12;

  // Double (double) - Números com ponto flutuante (números decimais)
  double pi = 3.14;
  double gravidade = 9.8;

  // Boolean (bool) - Verdadeiro ou falso
  bool verdadeiro = true;
  bool falso = false;

  // String - Sequência de caracteres (textos)
  String frase = 'He4art devs é a mais braba';

  // Concatenando strings com o operador +
  String frase2 = 'He4art devs é';
  String frase3 = ' a mais braba';
  print(frase2 + frase3); // He4art devs é a mais braba

  // Usando interpolação de variáveis dentro de uma String
  int num1 = 5;
  String frase4 = ' ${num1 * 2} vezes a mais braba';
  print(frase2 + frase4); // He4art devs é 10 vezes a mais braba

  // Lists (List) - Conjuntos ordenados de elementos
  var lista1 = [1, 2, 3];
  var lista2 = ['a', 'b', 'c'];
  var lista3 = [1, 2.5, 3];

  // Verificando o tipo dos itens com 'is'
  print(lista3[1] is double); // true
  print(lista3[0] is double); // true
  print(lista3[2] is double); // true

  // Declarando listas com tipos específicos
  List<int> listaInt = [1, 2, 3];
  List<String> listaStr = ['a', 'b', 'c'];
  List<double> listaDouble = [1, 2.5, 3];

  // Sets (Set) - Conjuntos não ordenados e sem valores repetidos
  var set1 = {1, 2, 3};
  var set2 = {'a', 'b', 'c'};

  // Maps (Map) - Estrutura de chave:valor
  var pessoa = {
    'nome': 'João',
    'idade': '20',
    'email': 'joao@email.com',
  };

  // Acessando os valores do Map pelas chaves
  print(pessoa['idade']); // 20
  print(pessoa['nome']);  // João
}
