void main() {

  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
    'João Rahman|55|jornalista|SP',
    'João Rahman|55|jornalista|SP',
  ];

  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  //! 3 - Apresente a quantidade de pacientes que moram em SP
 
 var sp = 0;
 var desenvolvedor = [];
 var estudante = [];
 var dentista = [];
 var jornalista = [];
  for(var paciente in pacientes){
    var p = paciente.split('|');
    if(int.parse(p[1]) > 20 ){
      print('O ${p[0]} tem mais de 20 anos, sua idade é ${p[1]}');
    }
    if(p.last.toUpperCase() == 'SP'){
      sp = sp + 1;
    }
    var prof = p[2];
    // print(prof);
    if(prof.toLowerCase() == 'desenvolvedor'){
      desenvolvedor.add(prof);
    }
    if(prof.toLowerCase() == 'estudante'){
      estudante.add(prof);
    }
    if(prof.toLowerCase() == 'dentista'){
      dentista.add(prof);
    }
    if(prof.toLowerCase() == 'jornalista'){
      jornalista.add(prof);
    }

  };

// print(estudante);
  print('$sp mora  em São Paulo');

  print('${jornalista.length} jornalistas');
  print('${dentista.length} dentistas');
  print('${estudante.length} estudantes');
  print('${desenvolvedor.length} desenvolvedor');

}