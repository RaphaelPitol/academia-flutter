import 'dart:io';

void main() {
  int numero;
  int soma = 0;
  do {
    print('Faltão ${100 - soma}');
    print('Digite um numero');
    var numL = stdin.readLineSync() as String;
    numero = int.parse(numL);
    if (numero < 0) {
      print('Digite um numero positivo');
    } else {
      soma = soma + numero;
    }
  } while (soma < 100);

  print(soma);
}
