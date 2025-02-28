import 'dart:io';
void main(){
     print('Qual seu  Nome?');
     var nome = stdin.readLineSync();
     print('Qual sua  Altura?');
     var altura = stdin.readLineSync();
     print('Qual sua Idade?');
     var idade = stdin.readLineSync();

     print('Muito Obrigado!$nome');
     print('voce tem $altura de altura');
     print('e sua idade é $idade anos');
}
