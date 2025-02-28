import 'dart:io';

void main() {
  var teatro = [];
  var poltronas = 6;
  var fileiras = 5;

  for (var i = 0; i < fileiras; i++) {
    var poltronaFileira = [];
    for (var i = 0; i < poltronas; i++) {
      poltronaFileira.add(false);
    }
    teatro.add(poltronaFileira);
  }

  var comprarMiasPoltrona = 'S';

  while (comprarMiasPoltrona.toLowerCase() == 's') {
    print('Qual Fileira?');
    var fil = stdin.readLineSync() as String;
    var fi = int.parse(fil);
    if (fi >= fileiras) {
      print('Fileria não existe!');
      continue;
    }

    print('Qual poltrona?');
    var pol = stdin.readLineSync() as String;
    var po = int.parse(pol);
    if (po >= poltronas) {
      print('Poltrona não existe!');
      continue;
    }
    teatro[fi][po] = true;

    print("Comprar mais?");
    comprarMiasPoltrona = stdin.readLineSync() as String;
  }

   print('Mapa do Teatro');
  print('############################');

  for (var f = 0; f < fileiras; f++) {

    var poltrona = '';
    for (var p = 0; p < poltronas; p++) {
      if (teatro[f][p] == true){
      poltrona += '####### |';
      } else {
      poltrona += 'P($f$p):${teatro[f][p]} | ';
      }
    }
    print(poltrona);
  }
  print('############################');
}
