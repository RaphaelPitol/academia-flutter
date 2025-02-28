import 'dart:io';

void main() {
  List<String> jogadores = [];
  List<int> gols = [];

  String artilheiro = '';
  int totalGols = 0;

  for (var i = 0; i <= 5; i++) {
    print('Numero da camiseta do ${i+1}º jogador:');
    jogadores.add(stdin.readLineSync() as String);

    print('Numero de gols do ${i+1}º jogador:');
    var gol = stdin.readLineSync() as String;
    gols.add(int.parse(gol));
  }

  for (var i = 0; i < jogadores.length; i++) {
    if(gols[i] > totalGols){
      totalGols = totalGols + gols[i];
      artilheiro = jogadores[i] + ' ${gols[i]}';
    }
  }

  print('o Artilheiro foi $artilheiro');


}