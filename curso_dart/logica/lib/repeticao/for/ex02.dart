import 'dart:io';

void main() {

  int soma = 0;
    for (var i = 1; i <= 10; i++) {
    print('Digite o $iº numero');
    var numerol = stdin.readLineSync() as String;
    var numero = double.parse(numerol);

    if (numero > 50) {
      soma += 1;
    }
   
  }

  print('$soma numeros são maiores que 50');
}