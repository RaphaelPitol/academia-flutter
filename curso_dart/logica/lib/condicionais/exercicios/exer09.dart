import 'dart:io';

void main(){
  print('Escolha seu suco favorito!');
  print('L - Laranja');
  print('M - Morango');
  print('A - Acerola');
  print('U - Uva');

  var opcaoLeitura = stdin.readLineSync() as String;
  var opcao = opcaoLeitura.toUpperCase();

  if (opcao == 'L') {
    print('Laranja');
  } else if (opcao == 'M') {
    print('Morango');
  } else if (opcao == 'A') {
    print('Acerola');
  } else if (opcao == 'U') {
    print('Uva');
  }else{
    print('Opção Invalida');
  }
  
}