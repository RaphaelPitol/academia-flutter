// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dart_poo/25_conversoes/curso.dart';

class Aluno {
  String nome;
  List<Curso> cursos;
  Aluno({
    required this.nome,
    required this.cursos,
  });

  @override
  String toString() => 'Aluno(nome: $nome, cursos: $cursos)';
}
