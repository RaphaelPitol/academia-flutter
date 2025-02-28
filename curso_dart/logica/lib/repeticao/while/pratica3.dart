import 'dart:io';

void main() {
  var velocidade = 0;
  var multado = 0;
  var veiculos = 0;
  String temcarro = 'sim';

  while (temcarro == 'sim') {
    veiculos = veiculos + 1;
    print('Digite a Velocidade do carro:');
    var velocidadeL = stdin.readLineSync() as String;
    var velo = int.parse(velocidadeL);

    if (velo > 120) {
      multado = multado + 1;
    }

    velocidade = velocidade + velo;

    print('Ainda tem Veiculos?');
    temcarro = stdin.readLineSync() as String;
  }
  print("Veiculos mulados foram $multado");
  print('Quantidade de Veiculos foi $veiculos');
  print('A media de velocidade foi ${velocidade / veiculos}');
}
