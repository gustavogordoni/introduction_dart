// 03 - Variáveis e Constantes

// Em programação, quando você quer guardar informações para seu programa usar,
// você precisará de variáveis e constantes. Elas são, em poucas palavras, um
// espaço onde você pode guardar coisas como um nome, um número ou uma lista,
// para poder usar depois.

void main() {

  // -------------------------------
  // | Variáveis
  // -------------------------------

  // No Dart, quando se quer guardar um dado que pode ser alterado ao decorrer da
  // aplicação, usamos variáveis. Para definir uma variável basta usar 'var' e o nome.
  var nome;

  // Caso não inicialize uma variável com algum valor, ela será iniciada como null.
  print(nome); // null

  // Inferência de tipo: o Dart deduz o tipo pelo valor atribuído.
  var i = 42; // int
  print(i is int); // true

  // Também podemos declarar com tipo explícito:
  String name = 'He4rt Devs';

  // A partir do Dart 2.12 temos null safety. Por padrão, tipos não podem ser nulos.
  // Para permitir que sejam nulos, usamos o tipo com '?':
  int? aNullableInt = null;
  print(aNullableInt); // null


  // -------------------------------
  // | Constantes
  // -------------------------------

  // Constantes são usadas quando o valor não vai mudar no programa.
  // Usamos 'const' ou 'final' para isso.

  const pi = 3.14;
  print(pi);

  // A diferença:
  // - const: constante em tempo de compilação (valor conhecido na hora de compilar)
  // - final: constante em tempo de execução (valor definido quando o programa roda)

  final agora = DateTime.now(); // ok
  // const tempo = DateTime.now(); // ERRO: DateTime.now() só é conhecido em tempo de execução

  // Outro exemplo prático:
  final resultado = multiplicar(2, 2); // ok
  print(resultado);

  // const res = multiplicar(2, 2); // ERRO: não é constante em tempo de compilação

  // resultado = 10; // ERRO: não pode alterar valor de uma 'final'


  // -------------------------------
  // | Inferência de tipos
  // -------------------------------

  var a = 1;
  print(a is int); // true

  const b = 'he4rt';
  print(b is String); // true
  print(b is double); // false

  // Após a variável ser inicializada, seu tipo não pode mudar:
  // a = 'texto'; // ERRO: a foi definida como int

  // Mesmo com inferência, pode ser útil declarar o tipo explicitamente:
  int numero = 1;
  const String texto = 'he4rt';
}

// Função que retorna o resultado da multiplicação de dois números
int multiplicar(int valor1, int valor2) {
  return valor1 * valor2;
} 