// 05 - Estruturas Condicionais
// As estruturas condicionais verificam uma condição e executam um bloco de código com base nisso.

void main() {
  
  
  // IF - Se a condição for verdadeira, executa o bloco de código
  String name = 'Patrick';

  if (name == 'Patrick') {
    print('Seja bem-vindo Patrick!');
  }

  // IF ELSE - Se a condição for falsa, executa outro bloco
  name = 'Pedro';

  if (name == 'Patrick') {
    print('Seja bem-vindo Patrick!');
  } else {
    print('Usuário não reconhecido');
  }

  // ELSE IF - Para múltiplas verificações diferentes
  name = 'João';

  if (name == 'Patrick') {
    print('Seja bem-vindo Patrick!');
  } else if (name == 'Pedro') {
    print('Seja bem-vindo Pedro!');
  } else if (name == 'Ana') {
    print('Seja bem-vinda Ana!');
  } else {
    print('Usuário não reconhecido');
  }

  // SWITCH - Alternativa ao else if, mais organizado
  name = 'João';

  switch (name) {
    case 'Patrick':
      print('Seja bem-vindo Patrick!');
      break;
    case 'Pedro':
      print('Seja bem-vindo Pedro!');
      break;
    case 'Ana':
      print('Seja bem-vinda Ana!');
      break;
    default:
      print('Usuário não reconhecido');
  }

  // OPERADOR TERNÁRIO - Mais limpo para condições simples
  name = 'Patrick';
  String mensagem = (name == 'Patrick')
      ? 'Seja bem-vindo Patrick!'
      : 'Usuário não reconhecido';
  print(mensagem);

  // Outro exemplo de ternário
  int idade = 18;
  String status = (idade >= 18) ? 'Maior de idade' : 'Menor de idade';
  print(status);
}
