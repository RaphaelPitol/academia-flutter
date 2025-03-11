Future<int> buscarId() async => 80;
Future<String> buscarNome(int id) async => 'Raphael $id';

//complexidade sem usar o await
Future<String> buscarNomeUsuario(){
  return buscarId().then((id){
    return buscarNome(id).then((nome){
      return 'Usuario $nome';
    });
  });
}

//simplicidade usando o async await
Future<String> buscarNomeUsuarioAwait() async {
  final id = await buscarId();
  final nome = await buscarNome(id);
  return 'Usuario $nome';
}

void main(){
  print('Inicio');
  buscarNomeUsuario().then(print);
  print('Fim');
}