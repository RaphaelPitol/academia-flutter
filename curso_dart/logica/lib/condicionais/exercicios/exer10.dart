import 'dart:io';

void main(){
  print('Qual estação do Ano?');
  print('1 - Outono');
  print('2 - Iverno');
  print('3 - Verão');
  print('4 - Primavera');

  var opcaoLeitura = stdin.readLineSync() as String;

  var opcao = int.parse(opcaoLeitura);

  if (opcao == 1) {
    print('Outono');
  } else if (opcao == 2) {
    print('Inverno');
  } else if (opcao == 3) {
    print('verão');
  } else if (opcao == 4) {
    print('Primavera');
  } else {
    print('Opção Invalida');
  }
}