void main(){
  print('Iniciando Main');
  func1();
  func2();
  print('Iniciando Main');
}

void func1(){
  print('Iniciando Func1');
  Future.delayed(Duration(seconds: 2), ()=> print('Fazendo algo complexo Func1'));
  print('Finalizando Func1');
}
void func2(){
  print('Iniciando Func2');
  Future.delayed(Duration(seconds: 1),() => print('Fazendo algo complexo Func2'));
  print('Finalizando Func2');
}