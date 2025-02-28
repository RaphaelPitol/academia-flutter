import 'dart:io';

void main() {
  print('Preço da Gasolina');
  var precoG = double.parse(stdin.readLineSync() as String);
  print('Preço da Etanol');
  var precoE = double.parse(stdin.readLineSync() as String);
  print('Reajuste');
  var reajuste = int.parse(stdin.readLineSync() as String);
  print('E- Para Etanol, G para Gasolina');
  var combustivel = stdin.readLineSync() as String;

  var  result = valorReajustado(precoG, precoE, reajuste, combustivel);

  for (var i = 0; i < result.length; i++) {
    print("Preço atualizado ${result[i]}");
  }
}

List<double> valorReajustado(
    double precoG, double precoE, int reajuste, String combustivel) {
  if (combustivel == "G") {
    precoG = ((precoG / 100) * reajuste) + precoG;
  }
  if (combustivel == "E") {
    var reajus = (precoE / 100) * reajuste;
    precoE = ((precoE / 100) * reajuste) + precoE;

    precoG += (reajus / 100 * 27);
  }

  var preco = [precoG, precoE];

  return preco;
}
