import 'dart:io';

void main() {
  String opcaoPrincipal = '';
  String nome = '';

  double precoRacaoRoyal = 290.00;
  double precoRacaoSterilised = 492.00;
  double precoBifinho = 23.92;
  double precoFralda = 38.61;

  double precoServicoBanhoeTosa = 55.9;
  double precoServicoTosaHigienica = 12.99;
  double precoHidratacao = 20.99;

  String produto1 = 'Ração Royal Canin Indoor';
  String produto2 = 'Ração Royal Canin Sterilised';
  String produto3 = 'Bifinho Keldog';
  String produto4 = 'Fraldas Descartáveis Super Secão';

  String servico1 = 'Banho e tosa';
  String servico2 = 'Tosa higienica';
  String servico3 = 'Hidratação dos pelos';

  List<String> carrinho = [];
  List<double> carrinhoTotal = [];
  double totalPedido = 0.0;

  String codigoAcesso = '';

  void menu() {
    print('Opção 1 – Ver promoções.');
    print('Opção 2 – Solicitar serviço.');
    print('Opção 3 – Listar carrinho de compra.');
    print('Opção 4 - Finalizar carrinho de compra.');
    print('Opção 0 - Sair.');
  }

  void menu2() {
    print(
        'Código 101 - Ração Royal Canin Indoor Para Cães Adultos De Porte Mini'
        'De Ambientes Internos 7,5kg na promoção pelo preço de R\$ 290,00.');
    print(
        'Código 102 - Ração Royal Canin Sterilised para Gatos Adultos Castrados e com o valor promocional de R\$ 492,00.');
    print(
        'Código 103 - Bifinho Keldog para Cães Porte Pequeno Sabor Carne e Cereais por R\$23,92.');
    print(
        'Código 104 - Fraldas Descartáveis Super Secão para Cães Machos com 12 Unidades R\$ 38,61.');
    print('8 – Adicionar ao carrinho de compras.');
    print('0 – Voltar.');
  }

  void menu3() {
    print('Código 201 - Banho e tosa - R\$ 55,99.');
    print('Código 202 - Tosa higienica -R\$ 12,99.');
    print('Código 203 - Hidratação dos pelos - R\$ 20,99');
    print('8 – Adicionar ao carrinho de compras.');
    print('0 – Voltar.');
  }

void calculaDescont(String tipoPagamento){
  for (var i = 0; i < carrinhoTotal.length; i++) {
          totalPedido = totalPedido + carrinhoTotal[i];
        }
        print('-----------------------------');
        print('Seu pedido Sr.(a) $nome');
        print('Descrição');
        for (var i = 0; i < carrinho.length; i++) {
          print('${carrinho[i]} --------> ${carrinhoTotal[i]}');
        }
        if (tipoPagamento == 'D') {
          var desconto = totalPedido / 100 * 10;
          print('Total do Pedido Bruto --------> R\$ $totalPedido');
          print('Total do desconto -------> R\$ $desconto');
          print('Total do Pedido  --------> R\$ ${totalPedido - desconto}');
        } else {
          print('Total do Pedido  --------> R\$ $totalPedido');
        }
        print('-----------------------------');
        opcaoPrincipal = '';
        opcaoPrincipal = '0';
}
  do {
    if (opcaoPrincipal == '') {
      menu();
    }

    if (nome == '') {
      print('Digite seu Nome:');
      nome = stdin.readLineSync() as String;
    }
    print('Bem vindo $nome ao autoatendimento do Cuidapet');

    if (opcaoPrincipal == '') {
      print('Digite a opção desejada:');
      opcaoPrincipal = stdin.readLineSync() as String;
    }

    switch (opcaoPrincipal) {
      case '1':
        menu2();
        var compral = stdin.readLineSync() as String;

        if (compral == '8' && carrinhoTotal.length >= 3) {
          opcaoPrincipal = '';
          print('O seu carrinho de compras já está cheio. Acesso restrito');
          print('Digite o Código de Acesso');
          codigoAcesso = stdin.readLineSync() as String;

          if (codigoAcesso == 'cuidapet') {
            opcaoPrincipal = '1';
            print('Digite o codigo do produto');
            var cdo = stdin.readLineSync() as String;
            switch (cdo) {
              case '101':
                carrinho.add(produto1);
                carrinhoTotal.add(precoRacaoRoyal);
                break;
              case '102':
                carrinho.add(produto2);
                carrinhoTotal.add(precoRacaoSterilised);
                break;
              case '103':
                carrinho.add(produto3);
                carrinhoTotal.add(precoBifinho);
                break;
              case '104':
                carrinho.add(produto4);
                carrinhoTotal.add(precoFralda);
                break;
              default:
                print('Codgo não existe');
            }
            codigoAcesso = '';
            opcaoPrincipal = '';
          } else {
            opcaoPrincipal = '';
            print('Acesso Negado!');
          }
        } else if (compral == '8' && carrinho.length < 3) {
          print('Digite o codigo do produto');
          var cdo = stdin.readLineSync() as String;
          switch (cdo) {
            case '101':
              carrinho.add(produto1);
              carrinhoTotal.add(precoRacaoRoyal);
              break;
            case '102':
              carrinho.add(produto2);
              carrinhoTotal.add(precoRacaoSterilised);
              break;
            case '103':
              carrinho.add(produto3);
              carrinhoTotal.add(precoBifinho);
              break;
            case '104':
              carrinho.add(produto4);
              carrinhoTotal.add(precoFralda);
              break;
            default:
              print('Codgo não existe');
          }
        } else if (compral == '0') {
          opcaoPrincipal = '';
        } else {
          print('Opção invalida!');
        }

        break;
      case '2':
        menu3();
        var compral = stdin.readLineSync() as String;

        if (compral == '8' && carrinhoTotal.length >= 3) {
          opcaoPrincipal = '';
          print('O seu carrinho de compras já está cheio. Acesso restrito');
          print('Digite o Código de Acesso');
          codigoAcesso = stdin.readLineSync() as String;

          if (codigoAcesso == 'cuidapet') {
            opcaoPrincipal = '1';
            print('Digite o codigo do produto');
            var cdo = stdin.readLineSync() as String;
            switch (cdo) {
              case '201':
                carrinho.add(servico1);
                carrinhoTotal.add(precoServicoBanhoeTosa);
                break;
              case '202':
                carrinho.add(servico2);
                carrinhoTotal.add(precoServicoTosaHigienica);
                break;
              case '203':
                carrinho.add(servico3);
                carrinhoTotal.add(precoHidratacao);
                break;
              default:
                print('Codgo não existe');
            }
            codigoAcesso = '';
            opcaoPrincipal = '';
          } else {
            print('Acesso Negado!');
            opcaoPrincipal = '';
          }
        }

        if (compral == '8' && carrinho.length < 3) {
          print('Digite o codigo do produto');
          var cdo = stdin.readLineSync() as String;
          switch (cdo) {
            case '201':
              carrinho.add(servico1);
              carrinhoTotal.add(precoServicoBanhoeTosa);
              break;
            case '202':
              carrinho.add(servico2);
              carrinhoTotal.add(precoServicoTosaHigienica);
              break;
            case '203':
              carrinho.add(servico3);
              carrinhoTotal.add(precoHidratacao);
              break;
            default:
              print('Codgo não existe');
          }
        } else if (compral == '0') {
          opcaoPrincipal = '';
        } else {
          print('Opção invalida!');
        }
        break;
      case '3':
        print('Seu pedido Sr.(a) $nome');
        print('Descrição');
        for (var i = 0; i < carrinho.length; i++) {
          print('${carrinho[i]} --------> ${carrinhoTotal[i]}');
        }
        opcaoPrincipal = '';
        break;
      case '4':
        print('Dinheiro ou Cartão:');
        print('D - para dinheiro');
        print('C - para cartão:');

        var tipoPagamento = stdin.readLineSync() as String;

        calculaDescont(tipoPagamento);
        
        break;
      case '5':
        opcaoPrincipal = '0';
        break;
      default:
    }
  } while (opcaoPrincipal != '0');
}
