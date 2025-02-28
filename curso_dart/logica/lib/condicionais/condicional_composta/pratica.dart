import 'dart:io';

void main(){
  print('Digite um numero.');
  var numero1Leitura = stdin.readLineSync() as String;
  print('Digite outro numero.');
  var numero2Leitura = stdin.readLineSync() as String;

  var numero1 = int.parse(numero1Leitura);
  var numero2 = int.parse(numero2Leitura);

 // print(numero1 != numero2);
  if (numero1 != numero2) {
    if (numero1 > numero2) {
      print('Numero 1 $numero1 é maior que o 2 $numero2');
    } else {
      print('Numero 2 $numero2 é maior que o 1 $numero1');
    }
  } else {
    print('Numeros iguais');
  }
}