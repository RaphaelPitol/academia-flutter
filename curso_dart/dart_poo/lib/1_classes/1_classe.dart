import 'package:dart_poo/1_classes/camiseta.dart';

void main (){
  // Camiseta camiseta;
  // Camiseta camiseta = Camiseta();
  var camisetaNike = new Camiseta();

  camisetaNike.cor = 'Preta';
  camisetaNike.tamanho = 'G';
  camisetaNike.marca = 'Nike';

  print('''
    Camiseta:
      Tamanho    ${camisetaNike.tamanho}
      Marca      ${camisetaNike.marca}
      Cor        ${camisetaNike.cor}
      TipoLavage ${camisetaNike.tipoLavagem()}
''');


  var camiseta = Camiseta();
  camiseta.cor = 'Verde';
  camiseta.marca = 'Nike';
  camiseta.tamanho = 'M';

    print('''
    Camiseta:
      Tamanho    ${camiseta.tamanho}
      Marca      ${camiseta.marca}
      Cor        ${camiseta.cor}
      TipoLavage ${camiseta.tipoLavagem()}
''');
}