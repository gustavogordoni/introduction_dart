// COLLECTIONS

void main() {

  // =====================================================
  // | LISTAS (List)
  // ===================================================== 

  var lista1 = [1, 2, 3];
  var lista2 = ['a', 'b', 'c'];
  var lista3 = [1, 2.5, 3];

  print(lista1);
  print(lista2);
  print(lista3);

  // Tipagem explícita
  List<int> listaInt = [1, 2, 3];
  List<String> listaStr = ['a', 'b', 'c'];
  List<double> listaDouble = [1, 2.5, 3];

  // Inferência com tipos
  var listaInferida1 = <int>[1, 2, 3];
  var listaInferida2 = <String>['a', 'b', 'c'];
  var listaInferida3 = <double>[1, 2.5, 3];

  // Verificação de tipo
  var listaTipo = [1, 2.5, 3];
  print(listaTipo[0] is double); // true
  print(listaTipo[1] is double); // true
  print(listaTipo[2] is double); // true

  // Acessando elementos
  print(lista2[1]); // b

  // Encontrando posição
  final posicao = lista2.indexOf('b');
  print(lista2[posicao]); // b

  // Adicionando elementos
  lista2.add('x');
  lista2.add('y');
  print(lista2); // [a, b, c, x, y]

  // Removendo elementos
  lista2.remove('a');
  print(lista2); // [b, c, x, y]

  // Propriedades de listas
  print(lista2.first); // b
  print(lista2.last); // y
  print(lista2.isEmpty); // false
  print(lista2.isNotEmpty); // true
  print(lista2.length); // 4

  // Spread operator
  const americaDoSul = ['Argentina', 'Brasil', 'Chile'];
  const americaDoNorte = ['Canada', 'Estados Unidos', 'México'];
  const america = [...americaDoSul, ...americaDoNorte];
  print(america);

  // Collection if
  const americaCentral = ['Costa Rica', 'Guatemala', 'Panamá'];
  const incluirAmericaCentral = true;

  const continenteAmericano = [
    ...americaDoSul,
    ...americaDoNorte,
    if (incluirAmericaCentral) ...americaCentral
  ];
  print(continenteAmericano);


  // =====================================================
  // | CONJUNTOS (Set)
  // =====================================================  

  var conjuntoInteiros = {1, 2, 3};
  var conjuntoVogais = {'a', 'e', 'i', 'o', 'u'};
  print(conjuntoInteiros);
  print(conjuntoVogais);

  // Não permite valores repetidos
  var conjuntoComRepetidos = {1, 1, 2, 2, 3};
  print(conjuntoComRepetidos); // {1, 2, 3}

  // Contains
  print(conjuntoInteiros.contains(3)); // true

  // Intersections
  var outroConjunto = {-2, -1, 0, 2};
  var intersecao = conjuntoInteiros.intersection(outroConjunto);
  print(intersecao); // {2}

  // Union
  var uniao = conjuntoInteiros.union(outroConjunto);
  print(uniao); // {0, 1, 2, 3, -2, -1}


  // =====================================================
  // | MAPS (Map)
  // =====================================================

  var pessoa = {
    'nome': 'João',
    'idade': '20',
    'email': 'joao@email.com',
  };

  // Acessando dados pelo nome da chave
  print(pessoa['nome']); // João
  print(pessoa['idade']); // 20
  print(pessoa['email']); // joao@email.com

  // Adicionando nova chave/valor
  pessoa['telefone'] = '99999-9999';
  print(pessoa);

  // Verificando se contém uma chave
  print(pessoa.containsKey('nome')); // true

  // Iterando sobre map
  pessoa.forEach((chave, valor) {
    print('$chave: $valor');
  });

  // Chaves e valores
  print(pessoa.keys); // (nome, idade, email, telefone)
  print(pessoa.values); // (João, 20, joao@email.com, 99999-9999)
}
