import 'dart:io';

void main() {

  double m = 0;
  double n = 10;
  double soma = 0;
    for (var i = 1; i <= 25; i++) {
    print('Digite a nota do $iº Aluno');
    var notal = stdin.readLineSync() as String;
    var nota = double.parse(notal);

    if (m < nota) {
      m = nota; 
    } 
   
    if (n > nota) {
      n = nota; 
    }

    soma = soma + nota;
   
  }
  double media = soma / 25;
  print('Maior Nota $m');
  print('Menor Nota $n');
  print('Media foi $media');
}