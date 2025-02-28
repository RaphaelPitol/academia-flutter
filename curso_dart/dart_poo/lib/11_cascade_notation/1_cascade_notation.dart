void main(List<String> args) {
  // var pessoa = Pessoa()
  // ..nome = 'Raphael Pitol'
  // ..email = 'raphael@email.com'
  // ..site = 'www.rapha.com.br';

  Pessoa()
  ..nome = 'Raphael Pitol'
  ..email = 'raphael@email.com'
  ..site = 'www.rapha.com.br'
  ..printPessoa();

var mapa = <String, String>{}
..putIfAbsent('nome', ()=> 'Raphael')
..putIfAbsent('email', ()=>'raphael@email.com')
..putIfAbsent('site', ()=> 'www.rapha.com.br');

print(mapa);

//   print('''
//     Pessoa:
//       nome: ${pessoa.nome}
//       email: ${pessoa.email}
//       site: ${pessoa.site}
// ''');
}

class Pessoa {
  String? nome;
  String? email;
  String? site;

  void printPessoa(){
     print('''
    Pessoa:
      nome: $nome
      email: $email
      site: $site
''');
  }
}