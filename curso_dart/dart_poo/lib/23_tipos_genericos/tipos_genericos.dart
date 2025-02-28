void main(){

  List<int> numero = [4, 5, 6];

  final caixa = Caixa<Bola>();
  caixa.adicionar(Bola());
  Bola? itemcaixaBola = caixa.getItems();
  print(caixa.alturaItem());
  print(itemcaixaBola);

  final caixaBoneca = Caixa<Boneca>();
  caixaBoneca.adicionar(Boneca());
  Boneca? itemCaixaBoneca = caixaBoneca.getItems();
  print(caixaBoneca.alturaItem());
  print(itemCaixaBoneca);

  //Isso não é permitido porque a caixa extends de I que extendes 
  // da class abstract Item
  // e o computador não extends da class Item
  //final caixaComputador = Caixa<Computador>();

}
class Computador{}

class Telefone extends Item{
@override
  double altura() {
    // TODO: implement altura
    return 15.0;
  }
}


class Bola extends Item{
@override
  double altura() {
    // TODO: implement altura
    return 30.1;
  }
}
class Boneca extends Item{
@override
  double altura() {
    // TODO: implement altura
    return 45.5;
  }
}

//A caixa pode receber qualquer coisa que extenda de um Item
class Caixa<I extends Item>{
  I? _item;
  void adicionar(I item){
    _item = item;
  }

  I? getItems(){
    return _item;
  }

  double alturaItem(){
    return _item?.altura() ?? 0;
  }

}

abstract class Item{
  double altura(){
    return 0.0;
  }
}