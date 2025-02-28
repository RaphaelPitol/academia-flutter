import 'package:dart_poo/4_heranca/cachorro.dart';

void main(){
  var cachorro = Cachorro(idade: 10);
  cachorro.tamanho = 'Pequeno';

  var i = cachorro.recuperarIdade();

  print(i);
  print(cachorro.calcularIdadeHumana());
}