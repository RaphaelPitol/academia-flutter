class Numero{
  int i;
  Numero(this.i);

  //com esta operator voce consegue sobrescrever os 
  //operadores + * / - ==

  Numero operator +(Numero numero2){
    return Numero( (i + numero2.i) * 5);
  }

  Numero operator -(Numero numero2){
    return Numero((i - numero2.i) + 50);
  }
}