import 'dart:io';

void main() {
  print('Qual seu nome?');
  var nome = stdin.readLineSync() as String;
  print('Qual sua primeira nota?');
  var nota1leitura = stdin.readLineSync() as String;
  print('Qual sua segunda nota?');
  var nota2leitura = stdin.readLineSync() as String;

  var nota1 = double.parse(nota1leitura);
  var nota2 = double.parse(nota2leitura);

  var media = (nota2 + nota1) / 2;
  if (media >= 6) {
    print('Parabéns $nome vc esta APROVADO!');
  } else if (media >= 5) {
      print('$nome Esta de RECUPERAÇÃO!');
    } else {
      print('$nome Esta de REPROVADO!');
    }
  
}
