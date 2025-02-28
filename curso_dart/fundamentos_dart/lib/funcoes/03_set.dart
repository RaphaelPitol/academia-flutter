void main () {
  var numerosLista = <int?>[];

  numerosLista.add(1);
  numerosLista.add(2);
  numerosLista.add(4);
  numerosLista.add(20);
  numerosLista.add(1);
  numerosLista.add(2);
  numerosLista.add(4);

  print(numerosLista);

  var numeroSet = <int?>{};
  numeroSet.add(1);
  numeroSet.add(2);
  numeroSet.add(4);
  numeroSet.add(20);
  numeroSet.add(1);
  numeroSet.add(2);
  numeroSet.add(4);

  print(numeroSet);

  print('.toSet');
  print(numerosLista.toSet());

  numeroSet.forEach(print);

  var numero1 = {1, 2, 3, 4, 5, 6};
  var numero2 = {1, 3, 5, 7};

  print('.differrence()');
  print(numero1.difference(numero2));
  print(numero2.difference(numero1));

  print('.union()');
  print(numero1.union(numero2));

  print('.intersection()');
  //retorna os valores iguais como ==
  print(numero1.intersection(numero2));

  print('.lookup()');
  //busca o valor identico
  print(numero1.lookup(88));

  
}