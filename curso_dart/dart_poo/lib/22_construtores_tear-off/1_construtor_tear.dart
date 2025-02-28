// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(){

  final nomes = ['Raphael', "Leonardo", 'Cilene'];

  final pessoasAntigo = nomes.map((nome) => Pessoa(nome)).toList();

  final pessoas = nomes.map<Pessoa>(Pessoa.nome).toList();
  for (var pessoa in pessoas) {
    print('Ola ${pessoa.nome}');
  }
}

class Pessoa {
  String nome;
  Pessoa(this.nome);
  Pessoa.nome(this.nome);
  
}
