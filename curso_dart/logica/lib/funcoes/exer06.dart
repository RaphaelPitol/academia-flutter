import 'dart:io';

void main (){
print("Qual o salario base:");
var salarioBase = double.parse(stdin.readLineSync() as String);
print("Qual mês?");
var mes = int.parse(stdin.readLineSync() as String);

var result = calculoSalario(salarioBase, mes);

print('O salario no mes $mes é  R\$ $result');
}

double? calculoSalario(double s, int m){
  if(m < 6){
  s = ((s / 100) * 30) + s;
  return s;
  }
  if(m < 12 && m >= 6){
  s = ((s / 100) * 40) + s;
  return s;
  }
  if(m == 12 ){
  s = ((s / 100) * 60) + s;
  return s;
  }
}
