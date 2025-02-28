void main() {
  var numeros = List.generate(10, (i) => i);
  numeros.forEach(printAcademia);

  var lista = [
    [1, 2],
    [3, 4]
  ];

  //Expand junta listas
  var listaNova = lista.expand((numeros) => numeros).toList();
  print(listaNova);

  //any busca qualquer um
  final listaBusca = ['Rodrigo', 'João', 'Raphael'];

  if (listaBusca.any((nome) => nome == 'Raphael')) {
    print('Tem Raphael');
  } else {
    print('Não tem Raphael');
  }

  // every
  final listaBusca2 = ['Rodrigoa', 'Joãoa', 'Raphael'];

  if (listaBusca2.every((nome) => nome.contains('a'))) {
    print('Todos os nomes tem o A');
  } else {
    print('Nem todos os nomes tem A');
  }

  //sort
  var listaOrdenada = [99, 22 , 85 , 1, 3];
  listaOrdenada.sort();
  print(listaOrdenada);

  
}

void printAcademia(int valor) {
  print(valor);
}
