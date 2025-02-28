class Pessoa{
  String? nome;
  //Composição
  //Quando um atributo de associação é Obrigatório
  //Nós estamos falando de composição
  Endereco end = Endereco();


  //Agregação
  //Quando um atributo de associação
  //Não é obrigatório
  //Nós estamos façando de agregação
  Telefone? fone;
}

class Endereco{}
class Telefone{}