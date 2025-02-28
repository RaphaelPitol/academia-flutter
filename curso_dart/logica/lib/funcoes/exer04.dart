import 'dart:io';

  double  recheada = 5.50;
  double  semRrecheada = 2.50;
void main (){
  menu();
  var op = stdin.readLineSync() as String;

  print('Qual a quantidade:');
  var qtd = int.parse(stdin.readLineSync() as String);

  print(valorTotal(op, qtd));
}

void menu(){
  print('1 - Sem Recheio');
  print('2 - Recheada');
}

double? valorTotal(String op, int qtd){

  if(op == '2'){
    return qtd * recheada;
  }
  if(op == '1'){
    return qtd * semRrecheada;
  }
}