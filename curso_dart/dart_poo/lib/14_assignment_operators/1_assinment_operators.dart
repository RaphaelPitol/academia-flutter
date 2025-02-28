void main() {
  // = -= /= >>=
  //+= *=  ~/=  <<=  &= |=

  var numero = 1;
  print(numero);

  numero += 2;
  print(numero);

  var numero2 = 2.0;

  numero2 /= 1.0;
  print(numero2);

  var nome;
  // nome = 'Leonardo';
  
  // if(nome == null){
  //   nome = 'Raphael';
  // }
  // verifica se o nome é null
  nome ??= 'Raphael';
  print(nome);
}
