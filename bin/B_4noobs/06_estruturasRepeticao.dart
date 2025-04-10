// 06 - Estruturas de Repetição
// Utilizamos as estruturas de repetição para executar blocos de código várias vezes de forma automática.

void main() {

  // FOR - Estrutura mais comum para repetir blocos com controle de início, fim e passo
  for (int contador = 1; contador < 11; contador++) {
    print(contador);
  }
  /*
    Saída:
    1
    2
    ...
    10
  */

  // FOR com listas - percorrendo todos os elementos da lista
  var lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for (int i = 0; i < lista.length; i++) {
    print(lista[i]);
  }

  /*
    lista.length retorna o tamanho da lista (10 nesse caso)
    Usamos o índice i para acessar os elementos da lista com lista[i]
  */

  // FOR-IN - forma mais simples e segura de percorrer uma lista
  // Minha observação: análogo ao foreach
  for (var numero in lista) {
    print(numero);
  }

  /*
    Cada valor da lista é atribuído à variável 'numero'
    e o bloco interno é executado para cada item
  */

  // WHILE - executa o bloco enquanto a condição for verdadeira
  int contador = 1;

  while (contador < 11) {
    print(contador);
    contador++; // necessário para evitar loop infinito
  }

  /*
    A variável precisa estar declarada fora do while
    e o incremento deve ser feito dentro do loop
  */

  // Exemplo de loop infinito
  /*
    int i = 1;
    while (i < 10) {
      print(i);
      // Esquecemos do i++ aqui => loop nunca termina!
    }
  */
}
