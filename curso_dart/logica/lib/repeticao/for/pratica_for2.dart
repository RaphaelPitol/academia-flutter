import 'dart:io';

void main(){
  print('Digite um numero para tabuada:');
  var numerol = stdin.readLineSync() as String;

  var numero = int.parse(numerol);

  for (var i = 10; i >= 1; i--){
    var resul = numero * i;
    print('$numero x $i= $resul');
  }
}