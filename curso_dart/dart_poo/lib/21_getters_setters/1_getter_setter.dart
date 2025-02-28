void main() {
  var pessoa = Pessoa();
  pessoa._nome = 'Raphael';
  print(pessoa._nome);
}

class Pessoa {
  String? _nome;

  String? get nome => _nome;
  set nome(String? nome) => _nome = nome;
}
