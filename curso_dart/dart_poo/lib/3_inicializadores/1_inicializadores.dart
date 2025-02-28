import 'package:dart_poo/3_inicializadores/produto.dart';

void main (){

  var produto = Produto(id: 1, nome: 'Omo', preco: 19.90);

  var produto2 = Produto.fabrica(id: 2, nome: 'Cerveja', preco: 3.99);
}