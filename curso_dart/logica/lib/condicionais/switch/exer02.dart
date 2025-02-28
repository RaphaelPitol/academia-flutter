import 'dart:io';

void main() {
  print('Escolha uma Letra');
  var op = stdin.readLineSync() as String;

  switch (op) {
    case 'a' || 'e' || 'i' || 'o' || 'u':
      print('$op É uma Vogal');
      break;
    default:
      print('$op Não é vogal');
  }
}
