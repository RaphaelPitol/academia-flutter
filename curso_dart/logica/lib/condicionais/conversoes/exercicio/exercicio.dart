import 'dart:io';

void main(){
  print('Qual sua idade?');
  var idade = stdin.readLineSync() as String;
  
  print('Qual preço do celular?');
  var celular = stdin.readLineSync() as String;

  int resultidade = int.parse(idade);
  double resultpreco = double.parse(celular);
  print('Idade $idade +10');
  print(resultidade + 10);
  print('Celular $resultpreco - 10');
  print(resultpreco + 10);
}