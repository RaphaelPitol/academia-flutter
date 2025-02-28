import 'dart:io';

void main() {
  print("Digite o primeiro numero:");
  var n1 = int.parse(stdin.readLineSync() as String);
  print("Digite o primeiro numero:");
  var n2 = int.parse(stdin.readLineSync() as String);
  print("Digite o a operação:");
  var op = stdin.readLineSync() as String;
  calculadora(n1, n2, op);

  print('Resultado da soma2 ${soma2(n1, n2)}');
}

void calculadora(n1, n2, operador) {
  switch (operador) {
    case '+':
      print("Soma ${n1 + n2}");
      break;
    case '-':
      print("Subtração ${n1 - n2}");
      break;
    case '*':
      print("Multiplicação ${n1 * n2}");
      break;
    case '/':
      print("Divisão ${n1 / n2}");
      break;
    default:
      print("Opção Invalida");
  }
}

double soma2(n1, n2){
  var result = 0.0;

  result += n1 + n2;
  result += n1 - n2;
  result += n1 * n2;
  result += n1 / n2;

  return result;
}
