import 'dart:async';

void main(){
  var f1 = Future.delayed(Duration(seconds: 1), () => 'F1');
  var f2 = Future.delayed(Duration(seconds: 1), () => 'F2');
  var f3 = Future.delayed(Duration(seconds: 3), () => 'F3');
  var f4 = Future.delayed(Duration(seconds: 1), () => 'F4');

  //Any retorna qualquer um que executou primeiro
  Future.any([f1, f2, f3, f4])
    .then(print)
    .catchError(print);
}