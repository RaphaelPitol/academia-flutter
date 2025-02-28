import 'dart:developer';
import 'dart:io';

void main(){
  print('Escolha o dia da semana!');
  print('1- Domingo');
  print('2- Segunda-Feira');
  print('3- Terça-Feira');
  print('4- Quarta-Feira');
  print('5- Quinta-Feira');
  print('6- Sexta-Feira');
  print('7- Sabado');

  var opcaoLeitura = stdin.readLineSync() as String;

  var opcao = int.parse(opcaoLeitura);

  if (opcao == 1) {
    print('1- Domingo');
  }else if (opcao == 2) {
    print('2- Segunda-Feira');
  }else if (opcao == 3) {
    print('3- Terça-Feira');
  }else if (opcao == 4) {
    print('4- Quarta-Feira');
  }else if (opcao == 5) {
    print('5- Quinta-Feira');
  }else if (opcao == 6) {
    print('6- Sexta-Feira');
  }else if (opcao == 7) {
    print('7- Sabado');
  } else {
    print('Opção Invalida');
  }
}