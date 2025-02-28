import 'dart:io';

void main(){
  print('Digite um numero!');
  var numeroLeitura = stdin.readLineSync() as String;

  var numero = int.parse(numeroLeitura);

  if (numero < 0) {
    print('Numero Negativo');
  } else {
    print('Numero Positivo');
  }
}