import 'dart:io';

void main() {
  double racaoIndor = 280.00;
  double banhoTosa = 54.50;
  double roupas = 59.99;
  double hidratacao = 39.99;
  double tosaHigienica = 10.99;
  double tingimento = 54.99;
  double racao15Kg = 345.50;
  int desconto = 0;

  double resut = 0;

  String op = '';
  int cliente = 0;
  String sair = 'n';

  while (sair == 'n') {
    print('Diga qual acesso!');
    print('1 - funcionario');
    print('2 - cliente');

    var tipo = stdin.readLineSync() as String;
    tipo = tipo.toUpperCase();

    switch (tipo) {
      case '1':
        print('Qual o codigo de acesso?');
        var codigo = stdin.readLineSync() as String;
        switch (codigo) {
          case 'cuidapetrestrito':
            print(
                'O cliente comprou ração Ração Royal Canin Indor 7,5kg? Digite S ou N');
            op = stdin.readLineSync() as String;
            op = op.toUpperCase();
            if (op == 'S') {
              resut = resut + racaoIndor;
            }

            print('O cliente solicitou banho e tosa? Digite S ou N.');
            var op3l = stdin.readLineSync() as String;
            var op3 = op3l.toUpperCase();
            if (op3 == 'S') {
              resut = resut + banhoTosa;
            }

            print('O cliente solicitou tosa higienica? Digite S ou N.');
            var op1l = stdin.readLineSync() as String;
            var op1 = op1l.toUpperCase();
            if (op1 == 'S') {
              resut = resut + tosaHigienica;
            }
            print('O cliente solicitou hidratação? Digite S ou N.');
            var op2l = stdin.readLineSync() as String;
            var op2 = op2l.toUpperCase();
            if (op2 == 'S') {
              resut = resut + hidratacao;
            }

            if (op1 == 'S' && op2 == 'S' && op3 == 'S') {
              desconto = 20;
            }

            print('Valor Final: R\$ $resut.');
            print('Resultado do Pedido:');
            var valorDesconto = (resut / 100) * desconto;
            print('Valor do desconto R\$$valorDesconto');
            resut = resut - valorDesconto;
            print('Valor Final: R\$ $resut.');

            break;
          case != 'cuidapetrestrito':
            print("Acesso negado!");
          default:
        }
        break;
      case '2':
        cliente = cliente + 1;
        print('Qual seu  Nome?');
        var nome = stdin.readLineSync();

        print("Prezado(a), $nome. Seja muito bem-vindo(a) à nossa loja.");

        String endereco = "Rua da Saudade";
        int numero = 1500;

        print('Endereço $endereco numero $numero.');

        print(
            "Oferecemos em nossa loja produtos e serviços para seu PET. Para venda de produtos, procure o colaborador Junior e, para serviços como banho ou tosa, procure o colaborador Neto. Obrigado e esperamos que tenha uma ótima experiência em nossa loja.");

        print('Ofertas!');
        print('1 - Ver ofertas de Produtos.');
        print('2 - Ver ofertas de Serviços.');
        print('3 - Ver ofertas de roupas.');
        print('4 - Ver novos serviços.');
        print('5 - Promoção I 10% de desconto');
        print('6 - Promoção II 20% de desconto');
        print('7 - Sair');
        var opLeitura = stdin.readLineSync() as String;

        var op = int.parse(opLeitura);
        switch (op) {
          case 1:
            print(
                'Ração Royal Canin Indor 7,5kg com o valor promocional de R\$ 280,00');
            break;
          case 2:
            print('Banho e tosa na promoção pelo preço do banho R\$ 54,00');
          case 3:
            print('Roupas em oferta - Capa de chuva R\$59,99');
          case 4:
            print('Hidratação de pelo R\$ 39,99');
            print('Tosa higienica por R\$ 10,99');
            print('Tingimento dos pelo por R\$ 55,99');
          case 5:
            print(
                'Compre um saco de 15kg de ração (R\$ 345,99) e ganhe 10% de desconto no banho');
          case 6:
            print(
                'Compre 1 banho com tosa higienica e hidratação e ganhe 20% de desconto no valor total');
          case 7:
            sair = 'sim';
          default:
            print('Opção Invalida!');
        }
        break;
      default:
        print('Opção Invalida!');
    }
  }
  print("Foram atendidos $cliente Clientes");
}
