void main ( ) {

  print("Inicio:");
  calcular();
  double result = calcularSoma(50.1, 10.10);
  print(result);
  print("Fim:");
}

void calcular(){
  var numero = 30;
  var porc = 10;

  var result = (numero / 100) * porc;

  print("O desconto de $numero é $result");
}

double calcularSoma(n1, n2) {
  return n1 + n2;
}