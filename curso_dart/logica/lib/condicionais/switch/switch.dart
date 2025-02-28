import 'dart:io';

void main() {
  print('Escolha o Sabor:');
  print('1 - Sabor Uva');
  print('2 - Sabor Maracuja');
  print('3 - Sabor Abacaxi');
  print('4 - Sabor Moranga');

  var opl = stdin.readLineSync() as String;
  var op = int.parse(opl);

  switch (op) {
    case 1:
      print('1 - Sabor Uva');
      break;
    case 2:
      print('2 - Sabor Maracuja');
      break;
    case 3:
      print('3 - Sabor Abacaxi');
      break;
    case 4:
      print('4 - Sabor Moranga');
      break;

    default:
      print('Codigo Inválido');
  }
}
