import 'dart:io';

void main() {
  List<int> velocidade = [];

  for (var i = 0; i <= 5; i++) {
    print('Velocidade da ${i+1}º volta:');
    var  vel = stdin.readLineSync() as String;
    velocidade.add(int.parse(vel));
  }

  for (var i = 5; i >= 0; i--) {
    print('Velocidade ${i+1} foi ${velocidade[i]}');
  }
}