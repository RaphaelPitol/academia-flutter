import 'dart:io';

void main(){
  print('Apartir de 11 un o suco cuts R\$4.50');
  print('Quantos sucos?');
  var qtdLeitura = stdin.readLineSync() as String;

  int qtd = int.parse(qtdLeitura);
  if(qtd > 10){
    var total = qtd * 4.5;
    print('O valor pago foi R\$4,50 o total é de R\$ $total');
  } else {
    var total = qtd * 5.5;
    print('O valor pago foi R\$5,50 o total é de R\$ $total');
  }

}