import 'dart:io';
void main(){
     print('Qual seu  Nome?');
     var nome = stdin.readLineSync();
     print('Qual sua frase preferida $nome?');
     var frase = stdin.readLineSync();

     print('A frase preferida do $nome é, $frase');
     
   
}