import 'dart:io';

double valor = 0.0;
void main () {

  print("Qual o valor da compra?");
  var vlrCompra = double.parse(stdin.readLineSync() as String);
  print("Qual prazo deseja, 3-5-7 ou 10");
  var prazo = int.parse(stdin.readLineSync() as String);

  switch(prazo){
    case 3:
    print(tres(vlrCompra));
    break;
    case 5:
    print(cinco(vlrCompra));
    break;
    case 7:
    print(sete(vlrCompra));
    break;
    case 10:
    print(dez(vlrCompra));
    break;
    default:
    print("Prazo invalido");
  }
}

double tres(vlr){
  valor += vlr + 25;
  return valor;
}
double cinco(vlr){
  valor += vlr + 20;
  return valor;
}
double sete(vlr){
  valor += vlr + 15;
  return valor;
}
double dez(vlr){
  valor += vlr + 10;
  return valor;
}
