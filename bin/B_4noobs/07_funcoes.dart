// =====================================================
// | Aula 07 - FUNÇÕES EM DART
// =====================================================

/*
  Funções são blocos reutilizáveis de código.
  Elas ajudam a organizar, isolar e reaproveitar lógica.
  Vamos ver vários tipos e formas de trabalhar com funções no Dart.
*/

void main() {
  print('\n--- Função básica ---');
  funcaoBasica();

  print('\n--- Função com retorno ---');
  print('O quadrado de 5 é ${funcaoComRetorno(5)}');

  print('\n--- Função com múltiplos parâmetros ---');
  multiplosParametros();

  print('\n--- Parâmetro opcional ---');
  parametroOpcional();

  print('\n--- Parâmetro com valor default ---');
  valorDefault();

  print('\n--- Parâmetros nomeados ---');
  parametrosNomeados();

  print('\n--- Parâmetros nomeados obrigatórios ---');
  parametrosNomeadosObrigatorios();

  print('\n--- Função pura vs impura ---');
  funcaoPuraVsImpura();

  print('\n--- Função anônima atribuída a variável ---');
  funcaoAnonima();

  print('\n--- Função como parâmetro (first-class citizens) ---');
  funcaoComoParametro();

  print('\n--- Funções com listas e forEach ---');
  funcoesComLista();
}

// =====================================================
// | 1. Função básica
// =====================================================

void funcaoBasica() {
  int numero = 4;
  print('O quadrado de $numero é ${numero * numero})}');
}

// =====================================================
// | 1.1 Função com retorno
// =====================================================

int funcaoComRetorno(int numeroBase) {
  return numeroBase * numeroBase;
}

// =====================================================
// | 2. Função com múltiplos parâmetros
// =====================================================

void multiplosParametros() {
  int a = 2, b = 3;
  int resultado = multiplicaNumeros(a, b);
  print('Resultado: $resultado');
}

int multiplicaNumeros(int num1, int num2) {
  return num1 * num2;
}

// =====================================================
// | 3. Parâmetro opcional com []
// =====================================================

void parametroOpcional() {
  print(diga('Patrick'));
  print(diga('Patrick', 12345678));
}

String diga(String nome, [int? telefone]) {
  var result = 'Mensagem enviada por $nome';
  if (telefone != null) {
    return '$result do número $telefone';
  }
  return result;
}

// =====================================================
// | 4. Parâmetro com valor padrão (default)
// =====================================================

void valorDefault() {
  construirCasa(6);
  construirCasa();
}

void construirCasa([int quantidadePortas = 4]) {
  print('Foi construída uma casa com $quantidadePortas portas.');
}

// =====================================================
// | 5. Parâmetros nomeados com {}
// =====================================================

void parametrosNomeados() {
  print(digaNomeado(nome: 'Patrick'));
  print(digaNomeado(nome: 'Patrick', telefone: 12345678));
  print(digaNomeado(telefone: 12345678, nome: 'Patrick')); // Ordem invertida
}

String digaNomeado({String? nome, int? telefone}) {
  var result = 'Mensagem enviada por $nome';
  if (telefone != null) {
    return '$result do número $telefone';
  }
  return result;
}

// =====================================================
// | 6. Parâmetros nomeados obrigatórios (required)
// =====================================================

void parametrosNomeadosObrigatorios() {
  print(digaComObrigatorios(nome: 'Patrick', telefone: 12345678));
  // print(digaComObrigatorios(nome: 'Patrick')); // ERRO se descomentar
}

String digaComObrigatorios({required String nome, required int telefone}) {
  return 'Mensagem enviada por $nome do número $telefone';
}

// =====================================================
// | 7. Função pura vs impura
// =====================================================

void funcaoPuraVsImpura() {
  // Impura (usa print direto)
  construirCasaImpura(6);
  construirCasaImpura();

  // Pura (retorna string)
  String casa6 = construirCasaPura(6);
  String casaDefault = construirCasaPura();
  print(casa6);
  print(casaDefault);
}

void construirCasaImpura([int quantidadePortas = 4]) {
  print('Foi construída uma casa com $quantidadePortas portas.');
}

String construirCasaPura([int quantidadePortas = 4]) {
  return 'Foi construída uma casa com $quantidadePortas portas.';
}

// =====================================================
// | 8. Função anônima
// =====================================================

void funcaoAnonima() {
  int numero = 2;

  Function elevarAoQuadrado = (int n) {
    return n * n;
  };

  int resultado = elevarAoQuadrado(numero);
  print('O quadrado de $numero é $resultado');
}

// =====================================================
// | 9. Funções como parâmetro (first-class citizens)
// =====================================================

void funcaoComoParametro() {
  Function cubo = (int n) => n * n * n;
  int resultado = realizarOperacao(cubo, 2);
  print('O cubo de 2 é $resultado');
}

int realizarOperacao(Function operacao, int numeroBase) {
  return operacao(numeroBase);
}

// =====================================================
// | 10. Funções em listas com forEach
// =====================================================

void funcoesComLista() {
  var fibonacci = [1, 2, 3, 5, 8, 13, 21];

  // Forma tradicional
  fibonacci.forEach((numero) {
    print(numero);
  });

  // Arrow function
  fibonacci.forEach((numero) => print(numero));

  // Tear-off
  fibonacci.forEach(print);
}
