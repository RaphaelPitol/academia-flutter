import 'dart:io';

void main() {
  var notasAluno = List.generate(2, (index) => List.filled(7, 0.0));
  var totalNotaAluno = 0.0;
  var alunos = [];

    for(int aluno = 0; aluno < 2; aluno ++){
      print('Qual o nome do Aluno?');
      alunos.add(stdin.readLineSync() as String);
    for(int nota = 0; nota < 6; nota++){
      print('Digite a ${nota +1} nota do aluno ${aluno + 1}');
      var notaAlunoStr = stdin.readLineSync() as String;

      notasAluno[aluno][nota] = double.parse(notaAlunoStr);

      totalNotaAluno = totalNotaAluno + notasAluno[aluno][nota];
    }
    notasAluno[aluno][6] = totalNotaAluno / 6;
    totalNotaAluno = 0.0; 
  }

    for (var aluno = 0; aluno < 2; aluno++) {
    print('${alunos[aluno]}:');
    for(int nota = 0; nota < 6; nota++){
      print('Nota prova ${nota +1}: ${notasAluno[aluno][nota]}');
    }
    print('A media do aluno ${aluno +1}: ${notasAluno[aluno][6]}');

    if(notasAluno[aluno][6] > 6) {
      print("${alunos[aluno]} -Aprovado");
    } else {
      print('${alunos[aluno]} -Reprovado');
    }
  }

}
