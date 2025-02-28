import 'package:dart_poo/2_contrutores/pessoa.dart';

void main() {
  // var pessoa = Pessoa(
  //   'Raphael Pitol',
  //   37,
  // 'Masculino');

  var pessoa2 =
      Pessoa(nomeConstruc: 'Raphael', idadeConstruc: 37, sexoConstruc: 'M');

  var pessoa3 = Pessoa.semNome(idade: 37, sexo: 'M');

  var pessoa4 = Pessoa.fabrica('Rapha');

  print(pessoa4.nome);
}
