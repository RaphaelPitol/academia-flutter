import 'dart:io';

void main(){
  print('Eleições');
  print('Qual sua idade?');
  var idadeleitura = stdin.readLineSync() as String;

  var idade = int.parse(idadeleitura);

  if (idade >= 16){
   if (idade <= 17) {
     print('Voto Facultativo');
   } else if(idade <= 69){
     print('Voto Obrigatorio');
   } else if(idade >= 70){
     print('Voto Facultativo');
   }
  } else {
   print('Proibido Votar.');
  }
}