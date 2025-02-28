import 'dart:io';
void main(){
     print('Qual seu Nome?');
     var nome = stdin.readLineSync() as String;
     print('Qual sua idade?');
     var idadeLeitura = stdin.readLineSync() as String;

     int idade = int.parse(idadeLeitura);

     if (idade >= 18) {
       print('$nome é maior de idade tem $idade anos');
     }
     if (idade < 18) {
       print('$nome é menor de idade tem $idade anos');
     }

     print('Fim do programa');

}