import 'dart:io';

void main() {
  print('Qual tamanho voce Usa?');
  var op = stdin.readLineSync() as String;

  op = op.toUpperCase();
  switch (op) {
    case 'P':
      print('P: 0.46 X 0.55');
      break;
    case 'M':
      print('M: 0.51 X 0.56');
      break;
    case 'G':
      print('G: 0.52 X 0.58');
      break;
    default:
      print('Opção Invalida');
  }
}
