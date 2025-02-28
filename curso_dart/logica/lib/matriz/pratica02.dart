import 'dart:io';

void main () {
  var teatro = [];
  var poltronas = 6;
  var fileiras = 5;

  for (var i = 0; i < fileiras; i++) {
    var poltronaFileira = [];
    for (var i = 0; i < poltronas; i++) {
      poltronaFileira.add(i);
    }
    teatro.add(poltronaFileira);
  }
  print('Qual Fileira?');
  var fil = stdin.readLineSync() as String;
  var fi = int.parse(fil);
  print('Qual poltrona?');
  var pol = stdin.readLineSync() as String;
  var po = int.parse(pol);

  
  
  print('Mapa do Teatro');
  print('############################');

  for (var f = 0; f < fileiras; f++) {

    var poltrona = '';
    for (var p = 0; p < poltronas; p++) {
      if (fi == f && po == p){
      poltrona += '####### |';
      } else {
      poltrona += 'P($f$p):${teatro[f][p]} | ';
      }
    }
    print(poltrona);
  }
  print('############################');
}