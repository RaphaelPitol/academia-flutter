void main () {
  var lista = ['Raphael'];
  print(lista);

  funcao(lista);

  print(lista);
}

void funcao(List<String> nomes){
  var outra = [...nomes];
  outra.add('Rodrigo');

  print(outra);
}