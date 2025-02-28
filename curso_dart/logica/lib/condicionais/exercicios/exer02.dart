import 'dart:io';

void main(){
  print('Qual a velocidade que voce esta andando no carro?');
  var velocidadeLeitura = stdin.readLineSync() as String;

  var velocidade = int.parse(velocidadeLeitura);

  if (velocidade > 80) {
    print('Voce esta MULTADO!');
  } else {
    print('Parabens voce esta dentro do limite!');
  }

}