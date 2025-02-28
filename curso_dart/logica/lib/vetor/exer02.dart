import 'dart:io';

void main() {
  List<int> almoco = [];

  for (var i = 0; i >= 0; i++) {
    print('${i+1}º Almoço:');
    var  alm = stdin.readLineSync() as String;
    almoco.add(int.parse(alm));

    if((almoco.length % 10) == 0){
      print('Hoje o seu almoço é uma cortesia da casa, Parabéns!');
    }
  }

}