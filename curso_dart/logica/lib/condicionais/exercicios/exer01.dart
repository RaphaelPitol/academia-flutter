import 'dart:io';

void main(){
  print('Digite um numero entre 0 e 10');
  var numeroLeitura = stdin.readLineSync() as String;

  var numero = int.parse(numeroLeitura);

  if (numero == 5){
    print('Parabéns voce acertou o numero é $numero');
  }

  print('Continue tentando');
}