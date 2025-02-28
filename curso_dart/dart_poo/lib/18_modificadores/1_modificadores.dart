import 'package:dart_poo/18_modificadores/pessoa.dart';

void main(){
  //construtores constantes faz com que o dart
  //utilize a mesma referencia de memoria
  //se o conteudo dos atributos forem iguais
  
  var p1 = const Pessoa(nome: 'Raphael', idade: 37);
  var p2 = const Pessoa(nome: 'Raphael', idade: 37);

  print(p1 == p2);
  print(p1.hashCode);
  print(p2.hashCode);
}