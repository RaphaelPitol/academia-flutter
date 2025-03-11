void main() {
  print('Levando o carro na mecanica');
  Future<int>(() {
    //função assincrona que vai fazer o orçamento
    // da manutenção do carro
    return 20;
  }).then((onValue) {
    print('O Valor do orçamento é $onValue R\$');
  });

  print('Fui comprar um MAC');
  Future<String>(() {
    throw Exception('Deu Rui, estava muito caro');
    return 'Comprei meu MACBOOK';
  }).then((onValue) {
    print(onValue);
  }).catchError((onError) {
    print(onError);
  }).whenComplete(() {print('Finalizando');});

  print('Saindo da Mecanica');
}
