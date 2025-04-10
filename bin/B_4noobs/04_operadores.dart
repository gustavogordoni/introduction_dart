// 04 - Operadores

void main() {
  // -------------------------------
  // | Operadores Aritméticos
  // -------------------------------

  // Operações básicas
  print(1 + 2); // 3
  print(2 - 1); // 1
  print(2 * 3); // 6
  print(4 / 2); // 2.0
  print(5 / 2); // 2.5

  // Operações mais específicas
  print(3 ~/ 2); // 1 -> divisão inteira, ignora o decimal
  print(5 % 2); // 1 -> resto da divisão


  // -------------------------------
  // | Incremento e Decremento
  // -------------------------------

  int a = 1;
  a++; // incrementa 1
  print(a); // 2

  a--; // decrementa 1
  print(a); // 1

  // Diferença entre pós e pré incremento/decremento
  int b;

  a = 0;
  b = a++; // b recebe a, depois a é incrementado
  print('a: $a'); // 1
  print('b: $b'); // 0

  a = 0;
  b = ++a; // a é incrementado, depois b recebe a
  print('a: $a'); // 1
  print('b: $b'); // 1

  // O mesmo vale para o decremento
  a = 1;
  b = a--; // b = 1, a = 0
  print('a: $a'); // 0
  print('b: $b'); // 1

  a = 1;
  b = --a; // a = 0, b = 0
  print('a: $a'); // 0
  print('b: $b'); // 0


  // -------------------------------
  // | Operadores de Igualdade e Relacionais
  // -------------------------------

  print(3 == 3); // true
  print(4 != 2); // true
  print(5 > 3);  // true
  print(2 < 1);  // false
  print(4 >= 4); // true
  print(3 <= 2); // false


  // -------------------------------
  // | Operadores Lógicos
  // -------------------------------

  int x = 1;
  int y = 2;

  print(x == y || x == x); // true (um dos lados é verdadeiro)
  print(x == y && x == x); // false (um lado é falso, então tudo é falso)
}
