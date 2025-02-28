void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|95|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.

  var lista = pessoas.toSet();
  var listaPessoas = lista.union(lista);
  print(listaPessoas);

  var m = 0;
  var f = 0;
  var homen = [];
  var mulher = [];
  for (var lista in listaPessoas) {
    var list = lista.split('|');
    if (list[2] == 'Masculino') {
      m += 1;
      homen.add(list[0]);
    } else {
      f += 1;
      mulher.add(list[0]);
    }
  }
  print('A Quantidade de Homens é= $m');
  print(homen);
  print('----------');
  print('A Quantidade de Mulheres é= $f');
  print(mulher);

  var maiores = [];
  for (var lista in listaPessoas) {
    var list = lista.split('|');
    if (int.parse(list[1]) > 18) {
      maiores.add(list);
    }
  }
  print('================');
  print(maiores);

  var idade = 18;
  var v;
  for (var velho in maiores) {
    if (int.parse(velho[1]) > idade) {
      v = velho;
      idade = int.parse(velho[1]);
    }
  }
  print('---------');
  print(v[0]);
}
