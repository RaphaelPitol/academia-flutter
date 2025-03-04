void main(){

  Future((){
    return 'Valor qualquer';
  }).then((v){print(v);});

  Future.value('Valor');//ja retorna Sucesso
  // Future.error('Erro');// ja retorna Erro
}

Future<String> func1() async{
  return 'Retorno async';
}