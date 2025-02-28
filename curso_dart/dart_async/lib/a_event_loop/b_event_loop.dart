import 'dart:io';

void main(){
  //forma errada de usar o enevnt loop
  //usando o sleep
  print('Iniciando Main');
  print(temperaturaAtual());
  print(previsao());
  print('Finalizando Main');
}

String temperaturaAtual(){
  sleep(const Duration(seconds: 3));
  return 'Temperatura atual 40º';
}
String previsao(){
  sleep(const Duration(seconds: 4));
  return 'Amanhã  20º';
}