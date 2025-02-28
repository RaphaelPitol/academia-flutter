import 'dart:io';

void main() {
//    Se o cliente comprar 10 pães e mais um queijo, ele ganha 10% de desconto.
//    Se o cliente comprar uma bisnaga ou um pão de forma, ele tem um desconto de 15%.
//    Agora se o cliente comprar leite e pão doce ou suspiro, ele ganha 5% de desconto.

  int pao, queijo, bisnaga, paoDeForma, leite, doce, suspiro, percentual;

  double precoPao,
      precoQueijo,
      precoBisnaga,
      precoPaoDeForma,
      precoLeite,
      precoDoce,
      precoSuspiro,
      soma;

  precoPao = 0.5;
  precoQueijo = 30;
  precoBisnaga = 2.5;
  precoPaoDeForma = 10;
  precoLeite = 3.5;
  precoDoce = 3;
  precoSuspiro = 0.25;

  print('Pão');
  var paoL = stdin.readLineSync() as String;
  pao = int.parse(paoL);
  print('Queijo');
  var queijoL = stdin.readLineSync() as String;
  queijo = int.parse(queijoL);
  print('Bisnaga');
  var bisnagaL = stdin.readLineSync() as String;
  bisnaga = int.parse(bisnagaL);
  print('Pão de Forma');
  var paoDeFormaL = stdin.readLineSync() as String;
  paoDeForma = int.parse(paoDeFormaL);
  print('Leite');
  var leiteL = stdin.readLineSync() as String;
  leite = int.parse(leiteL);
  print('Doce');
  var doceL = stdin.readLineSync() as String;
  doce = int.parse(doceL);
  print('Suspiro');
  var suspiroL = stdin.readLineSync() as String;
  suspiro = int.parse(suspiroL);

  soma = 0;
  soma += pao * precoPao;
  soma += queijo * precoQueijo;
  soma += bisnaga * precoBisnaga;
  soma += paoDeForma * precoPaoDeForma;
  soma += leite * precoLeite;
  soma += doce * precoDoce;
  soma += suspiro * precoSuspiro;

  percentual = 0;

  if (bisnaga >= 1 || paoDeForma >= 1) {
    percentual = 15;
  } else if ((pao >= 10 && queijo >= 1)) {
    percentual = 10;
  } else if ((leite >= 1 && pao >= 1) || suspiro >= 1) {
    percentual = 5;
  }

  print('Antes do desconto $soma');
  print('%$percentual');
  var desconto = (soma / 100) * percentual;
  soma = soma - desconto;
  print('Preco com desconto $soma');
}
