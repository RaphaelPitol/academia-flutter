Future<void> main() async {
print('Inicio');

//para tratamento de erro usamos o try catch
//ou um erro especifico podemos usar o catchErro
try {
  
  final id = await buscarId();
  final nome = await buscarNome(id);
  // final nome = await buscarNome(id).catchError((erro){
  //   print('Aconteceu um erro Aki $erro');
  // });

  print('O Nome é $nome');
} catch (e) {
  print('Erro: $e');
}

print('Fim');
}

Future<int> buscarId() async => 80;
Future<String> buscarNome(int id) async {
  throw Exception('Aconteceu um ERRO');
}
