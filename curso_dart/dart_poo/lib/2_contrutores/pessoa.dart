class Pessoa {
  String? nome;
  int? idade;
  String? sexo;

  // Pessoa(String nomeConstruc, int idadeConstruc, String sexoConstruc) {
  //   nome = nomeConstruc;
  //   idade = idadeConstruc;
  //   sexo = sexoConstruc;
  // }
  //Construtor Nomeado e requerido
  Pessoa(
      {required String nomeConstruc,
      required int idadeConstruc,
      required String sexoConstruc}) {
    nome = nomeConstruc;
    idade = idadeConstruc;
    sexo = sexoConstruc;
  }

  Pessoa.vazia();

  //Construtor nomeado
  Pessoa.semNome({required this.idade, required this.sexo});

  //Construtor do tipo factory
  //é utilizado quando tempos uma regra de negocio
  //para criação da nossa classe!!
  factory Pessoa.fabrica(String nomeConstr){
    var nome = nomeConstr + '_Fabrica';
    var pessoa = Pessoa.vazia();
    pessoa.nome = nome;

    return pessoa;
  }
}
