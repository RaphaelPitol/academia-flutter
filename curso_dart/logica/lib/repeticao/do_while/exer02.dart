import 'dart:io';

void main() {
  bool valido = false;
  do {
    print('Qual melhor dia de vencimento?  2, 5 ou 10');
    var dia = stdin.readLineSync() as String;

    switch (dia) {
      case '2':
        print('Boleto registrado dia $dia.');
        valido = true;
        break;
      case '5':
        print('Boleto registrado dia $dia.');
        valido = true;
        break;
      case '10':
        print('Boleto registrado dia $dia.');
        valido = true;
        break;
      default:
        print('Dia Invalido!');
    }
  } while (valido == false);
}
