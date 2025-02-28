
import 'package:dart_poo/25_conversoes/aluno.dart';
import 'package:dart_poo/25_conversoes/curso.dart';

void main(){
   var frutas = [
    Fruta(nome: 'Abacaxi'),
    Fruta(nome: 'Manga'),
    Fruta(nome: 'Limão'),
    Fruta(nome: 'Morango'),
   ];
   var frutasMap = [
    {'nome': 'Abacaxi'},
    {'nome': 'Manga'},
    {'nome': 'Limão'},
    {'nome':'Morango'},
   ];

  //  List<Suco> sucos = [];

  //  for (var fruta in frutas) {
  //    final suco = Suco(sabor: fruta.nome);
  //    sucos.add(suco); 
  //  }


  //o map retorna um interable por isso usamos 
  //o toList pra converter em uma lista.
  var sucos = frutas.map((fruta){
    return Suco(sabor: fruta.nome); 
  }).toList(); 
   print(sucos);

  //convertendo fruta em na class SUCO
  var sucosMap = frutasMap.map((frutaMap){
    return Suco(sabor: frutaMap['nome'] ?? 'Sem nome');
  });
  print(sucosMap);



  var alunoAdf = <String, Object>{
    'nome' : 'Raphael Pitol',
    'cursos' : [
      {
        'nome':'Academia do Flutter',
        'descricao':'Melhor curso de flutter do Brasil'
      },
      {
        'nome':'Dart-POO',
        'descricao':'Melhor curso de Dart-POO do Brasil'
      },
      {
        'nome':'Java-Spring',
        'descricao':'Melhor curso de Java-Spring do Brasil'
      },
      
    ]
  };
  final cursoMap = alunoAdf['cursos'] as List<Map<String, String>>;
  
  final cursos = cursoMap.map((curso){
    var nome = curso['nome'] as String;
    var descricao = curso['descricao'] as String;

    return Curso(nome: nome, descricao: descricao);
  }).toList();

  final nomeAluno = alunoAdf['nome'] as String;

  final aluno = Aluno(nome: nomeAluno, cursos: cursos);
  print(aluno);

}




class Suco {
  String sabor;
  Suco({
    required this.sabor,
  });

  @override
  String toString() => 'Suco sabor: $sabor';
}

class Fruta {
  String nome;
  Fruta({
    required this.nome,
  });

}
