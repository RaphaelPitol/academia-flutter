import 'dart:io';

void main(){
  print('Digite seu Peso!');
  var pesoLeitura = stdin.readLineSync() as String;
  print('Digite sua Altura!');
  var alturaLeitura = stdin.readLineSync() as String;

  var peso = double.parse(pesoLeitura);
  var altura = double.parse(alturaLeitura);

  var imc = peso / (altura * altura);

  if (imc >= 18.5 && imc <= 24.9) {
    print('$imc IMC entre 18.5 e 24.9 - normal.');
  }else if(imc >= 24.9 && imc <= 30){
    print('$imc IMC entre 24.9 e 30 - sobrepeso.');
  }else if (imc > 30) {
    print('$imc IMC maior que 30 - obesidade.');
  }else {
    print('$imc IMC menor que 18.5 - magreza.');
  }

}