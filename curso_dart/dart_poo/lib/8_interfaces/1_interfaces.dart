import 'package:dart_poo/8_interfaces/carro.dart';
import 'package:dart_poo/8_interfaces/gol.dart';
import 'package:dart_poo/8_interfaces/uno.dart';

void main (){
  var uno = Uno();
  var gol = Gol();

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
''');
}