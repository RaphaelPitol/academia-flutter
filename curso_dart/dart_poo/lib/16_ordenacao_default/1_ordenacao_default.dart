import 'package:dart_poo/16_ordenacao_default/cliente.dart';

void main(){
  var c1 = Cliente(nome: 'Raphael', telefone: '15262555');
  var c2 = Cliente(nome: 'Alphael', telefone: '15262555');
  var c3 = Cliente(nome: 'Baphael', telefone: '45262555');
  var c4 = Cliente(nome: 'Caphael', telefone: '25262555');

  var lista = [c1, c2, c3, c4];

  print(lista);

  lista.sort();

  // lista.sort((c1, c2) => c1.nome.compareTo(c2.nome));
  print(lista);
}