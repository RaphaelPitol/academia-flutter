import 'dart:io';

void main(){

  var valor = 0;
  var valor2 = 0;
  var soma = 0;
  double media = 0;
  for (var i = 1; i <= 10; i++) {
    print('Quanto quer sacar?');
    var valorl = stdin.readLineSync() as String;
    valor2 = int.parse(valorl);
    
    if (valor < valor2){
      valor = valor2;
    }
    soma = soma + valor;
  }
    media = soma / 10;
    print('Maior Saque $valor');
    print("Media de saques $media");
    print("Total $soma");
}