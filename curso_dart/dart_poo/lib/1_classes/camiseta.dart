//Public
//Private  _

//Uma classe possui
//Atributos e comportamentos
class Camiseta {
  String? tamanho;
  String? _cor;
  String? marca;

  //Atributo de classe
  static const String nome = 'Camiseta';
  //Método de classe
  static String recuperaNome() => nome;

  String? get cor => _cor;
  set cor (String? cor){
    if(cor == 'Verde'){
      throw Exception('Não pode ser Verde');
    }
  }


  //Funçoes dentro de classe são chamados de metodods
  String tipoLavagem(){
    if(marca == 'Nike'){
      return 'Não pode lavar na maquina';
    } else {
      return 'Pode lavar na maquina';
    }
  }
}