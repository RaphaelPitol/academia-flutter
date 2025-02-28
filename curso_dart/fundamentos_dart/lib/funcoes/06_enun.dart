void main( ){

  var cor = Cores.amarelo;

  if(cor == Cores.amarelo){
    print('Amarelo');
    }

  //Trasformando string azul em um enun Cores.azul
  //Antes da versão 2.15
  var azul = 'azul';
  var corAzul = Cores.values.where((cor) => cor.toString() =='Cores.$azul' );
  print(corAzul);


  print(Cores.azul.name);
  var corAzul215 = Cores.values.byName(azul);
  print(corAzul215);

  var coresMap = Cores.values.asMap();
  print(coresMap);

  var coreNameMap = Cores.values.asNameMap();
  print(coreNameMap);

 var corBranco = coreNameMap['branco'];
 print(corBranco);

}

enum Cores {
  amarelo, azul, vermelhor, verde,
}