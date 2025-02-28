import 'dart:io';

void main(){
  int vacina = 1;
  var somadias = 0;
while (vacina <= 3) {
  print('Quantos dias tem o bebe?');
  var diasL = stdin.readLineSync() as String;
  var dias = int.parse(diasL);
  somadias = somadias + dias;
  vacina = vacina + 1;
}
print('Media de dias dos Bebes vacinados: ${somadias / 3}');
}