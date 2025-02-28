import 'dart:ffi';
import 'dart:io';

void main(){
  print('Qual sua idade?');
  var idadeLeitura = stdin.readLineSync() as String;
  var idade = int.parse(idadeLeitura);

  if (idade < 21) {
    print('Não pode tirar carteira D');
  return;
  }

  print('Voce possui carteira? ');
  print('digite 1 para sim ');
  print('digite 0 para nao ');
  var possuiAbLe = stdin.readLineSync() as String;
  if(possuiAbLe == '1'){
    possuiAbLe = 'true';
  }else{
    possuiAbLe = 'false';
    return;
  }
  var possuiAb = bool.parse(possuiAbLe);

  print('Qual Abilitação?');
  var abilitacao = stdin.readLineSync() as String;

  print('Em que ano tirou a abilitação');
  var anoAbilitacaoLei = stdin.readLineSync() as String;
  var anoAbilitacao = int.parse(anoAbilitacaoLei);

  print('Voce possui Multa nos ultimos 12 meses? ');
  print('digite 1 para sim ');
  print('digite 0 para nao ');
  var possuiMultaLei = stdin.readLineSync() as String;
  if(possuiMultaLei == '1'){
    possuiMultaLei = 'true';
  }else{
    possuiMultaLei = 'false';
  }
  var possuiMulta = bool.parse(possuiMultaLei);

  var anoAtual = 2025;
  var tempoAb = anoAtual - anoAbilitacao;

  if (idade >= 21 && possuiAb) {
    if (((abilitacao == 'B' && tempoAb >= 2) || (abilitacao == 'C' && tempoAb >= 1)) && possuiMulta == false){
      print('Voce pode tirar carteira D');
    } else {
      print('Não pode tirar carteira D');
    }
  } else {
    print('Não tem Permissão para tirar a carteira D');
  }
}