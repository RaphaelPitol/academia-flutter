import 'dart:io';

void main(){
  print('O Atendimento é Prioritário?');
  var atendimento = stdin.readLineSync() as String;

  print(atendimento.toLowerCase());
  if (atendimento.toLowerCase() == 'sim') {
    print("Vá para os caixas 1, 2 e 3");
  } else {
    print('Vá para qualquer caixa, exceto os 1, 2 e 3, que são prioritários');
    
  }
}