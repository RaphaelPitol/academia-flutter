import 'dart:io';

void main() {

  double soma = 0;
    for (var i = 1; i <= 5; i++) {
    print('Digite o $iº numero');
    var numerol = stdin.readLineSync() as String;
    var numero = double.parse(numerol);

    soma = soma + numero;
  }

  print('A Soma é $soma');
}