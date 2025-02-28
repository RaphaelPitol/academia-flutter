import 'dart:ffi';
import 'dart:io';

void main() {
  List<int> numeroCamisa = [];
  List<double> salario = [];
  double totalSalario = 0.0;
  double mediaSalario = 0.0;

  for (var i = 0; i < 11; i++) {
    print('Digite o numero da camiseta do jogador:');
    var c = stdin.readLineSync() as String;
    numeroCamisa.add(int.parse(c));
  
    print('Digite o salario do ${i+1}º jogador:');
    var s = stdin.readLineSync() as String;
    salario.add(double.parse(s));

    totalSalario = totalSalario + salario[i];
  }
  
  mediaSalario = totalSalario / salario.length;
  print('Media $mediaSalario');

  for (var i = 0; i < salario.length; i++) {
    if (salario[i] > mediaSalario) {
      print('O Jogador camisa ${numeroCamisa[i]} ganha ${salario[i]}');
    }
  }

}
