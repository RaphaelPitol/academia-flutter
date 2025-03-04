void main() {
  print('Inicio Main');

  Future<String>(() => 'Future normal').then(print);

//microtask tem prioridade no eventLoop
  Future<String>.microtask(() {
    // throw Exception('Erro');
    return 'Microtask';
  })
  .then(print)
  .catchError(print);
  print('Fim Main');
}
