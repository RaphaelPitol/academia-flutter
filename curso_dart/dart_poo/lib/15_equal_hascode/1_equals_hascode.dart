import 'package:dart_poo/15_equal_hascode/pessoa.dart';

void main(){
  var p1 = Pessoa(nome: 'Raphael', email: 'raphael@email.com');
  var p2 = Pessoa(nome: 'Raphael', email: 'raphael@email.com');

  print(p1.hashCode);
  print(p2.hashCode);

  if(p1 == p2){
    print('É Igual');
  }else {
    print(' Não é Igual');
  }
}