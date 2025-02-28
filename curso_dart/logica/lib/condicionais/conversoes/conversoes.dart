import 'dart:io';
void main(){
     print('Digite sua Idade');

     var idade = stdin.readLineSync() as String;

    //converte string em inteiro
     print(int.parse(idade) + 5);
}