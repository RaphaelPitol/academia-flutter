import 'dart:developer';
import 'dart:io';

void main(){
  print('Opções do Menu!');
  print('1- Contratar internet');
  print('2- Cancelar a internet');
  print('3- Problemas na internet');
  print('4- Financeiro');
  print('5- Falar com um atendente');

  var opcaoLeitura = stdin.readLineSync() as String;

  var opcao = int.parse(opcaoLeitura);

  if (opcao == 1) {
    print('Contratar internet');
  }else if (opcao == 2) {
    print('Cancelar a internet');
  }else if (opcao == 3) {
    print('Problemas na internet');
  }else if (opcao == 4) {
    print('Financeiro');
  }else if (opcao == 5) {
    print('Falar com atendente');
  } else{
    print('Opção Invalida');
  } 
}