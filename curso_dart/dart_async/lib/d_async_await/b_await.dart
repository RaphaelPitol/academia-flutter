void main(){
  final totalAlunos = buscarTotaldeAlunos();

  totalAlunos
  .then((total){
    print('O Total de alunos é $total');
  });
  print('Resposta: $totalAlunos');
}

Future<int> buscarTotaldeAlunos() async {
  print('Este ponto do metodo é assincrono');
  final buscadoTotalDeAlunos = await Future.value(887);
  print('Este ponto do metodo é depois do await');
  return buscadoTotalDeAlunos;
}