import 'dart:io';

void main(){
  print('Preço da Gasolina?');
  var gasolinaLeitura = stdin.readLineSync() as String;
  print('Preço do alcool?');
  var alcoolLeitura = stdin.readLineSync() as String;

  var gasolina = double.parse(gasolinaLeitura);
  var alcool = double.parse(alcoolLeitura);

  var media = alcool / gasolina;

  if (media >= 0.7) {
    print('Compensa gasolina media é $media');
  } else {
    print('Compensa alcool media é $media');
  }
}