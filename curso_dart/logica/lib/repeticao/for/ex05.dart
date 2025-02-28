import 'dart:io';

void main() {
  for (var i = 0; i <= 4; i++) {
    print('Advinhe a quantidade de bolinhas de gude:');
    var qtdl = stdin.readLineSync() as String;
    var qtd = int.parse(qtdl);

    switch (qtd) {
      case > 82:
        print('Você errou! Existem menos bolinhas do que você digitou');
        break;
      case < 82:
        print('Você errou! Existem mais bolinhas do que você digitou');
        break;
      default:
        print('Fim');
        print('Parabéns, você acertou');
        return;
    }
  }
}
