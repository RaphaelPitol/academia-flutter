import 'dart:io';

void main() {

  int soma = 0;
    for (var i = 1; i <= 12; i++) {
    print('Digite o $iº Jogador');
    var numerol = stdin.readLineSync() as String;
    var numero = double.parse(numerol);

    if (numero > 1.90) {
      soma += 1;
    }
   
  }

  print('$soma Jogadores são maiores que 1.90');
}