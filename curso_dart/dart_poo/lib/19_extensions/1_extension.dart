import 'package:dart_poo/19_extensions/pessoa.dart';
import 'package:dart_poo/19_extensions/pessoa_extension.dart';
import 'package:dart_poo/19_extensions/saudacao_string_extensions.dart';

void main(){
  //extencions adiciona metodos e atributos 
  //nas class onde vc não tem o codigo fonte
  //neste caso fizemos na class String
  var nome = 'Raphael Pitol';
  print(nome.saudacao());


  var p1 = Pessoa(nome: 'Leonardo Pitol');

  var msg = p1.saudacao('Não descuta comigo');
  print(msg);
}