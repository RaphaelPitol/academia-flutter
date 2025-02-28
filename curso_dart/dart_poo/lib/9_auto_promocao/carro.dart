//Isso é uma classe abstrata
//pois tem metodos implementados
abstract class CarroClasseAbstrata {
  void velocidadeMaxima(){

  }
}


//Isso aqui é uma interface
//pois não tem método implementado
abstract class Carro{
  abstract int portas;
  abstract int rodas;
  abstract String motor;
  int velocidadeMaxima();
}