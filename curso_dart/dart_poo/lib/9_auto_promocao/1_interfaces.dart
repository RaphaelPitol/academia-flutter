import 'package:dart_poo/8_interfaces/carro.dart';
import 'package:dart_poo/8_interfaces/gol.dart';
import 'package:dart_poo/8_interfaces/uno.dart';

void main (){
  var uno = Uno();
  var gol = Gol();

  Carro golCarro = Gol();

  //Quando checamos se a variavel é (is) de um tipo
  //Caso ela seja o dart vai automaticamente converter
  //essa instancia para a classe do Tipo!!!
  if (golCarro is Gol){
    golCarro.tipoRoda();
  }

  //var tipoRoda = (golCarro as Gol).tipoRoda();
 // print('Tipo de Rodas $tipoRoda');

  // print(uno.velocidadeMaxima());
  // print(gol.velocidadeMaxima());
  dadosDoCarro(gol);
  dadosDoCarro(uno);
  print(gol.tipoRoda());
}

void dadosDoCarro(Carro carro){
  print('''
    Tipo : ${carro.runtimeType}
    Roda : ${carro.rodas}
    Porta : ${carro.portas}
    Motor : ${carro.motor}
    VelocidadeMaxima: ${carro.velocidadeMaxima()}
    Tipo de Roda: ${carro is Gol ? carro.tipoRoda() : 'Não disponivel'}
''');
}