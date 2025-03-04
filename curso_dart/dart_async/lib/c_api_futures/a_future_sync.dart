void main(){
  print('Inicio Main');
  Future<String>.sync((){
    print('Função Future executada');
    // throw Exception('Erro');
    return 'Resultado Future';
  }).then(print);
  print('Fim Main');
}