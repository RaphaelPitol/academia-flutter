import 'dart:io';

void main(){
  String op = '';
  while(op == ''){
    print("Digite uma letra:");
    op = stdin.readLineSync() as String;
  }
}