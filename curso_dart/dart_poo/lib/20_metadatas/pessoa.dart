import 'dart:io';

import 'package:dart_poo/20_metadatas/fazer.dart';

@Fazer(quem: 'Raphael Pitol', oque: 'tentando ler a anotacao da classe')
@gzip
class Pessoa {
  @Fazer(
      quem: 'raphael no atributo', oque: 'tentando ler a anotacao no atributo')
  String? nome;

  @Fazer(
      quem: 'raphael no metodo', oque: 'tentando ler a anotacao no metodo')
  void metodo() {}
}
