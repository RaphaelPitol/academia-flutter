void main() {
  print('Init Main');

  var f1 = Future.delayed(Duration(seconds: 1), () => 'F1');
  var f2 = Future.delayed(Duration(seconds: 1), () => 'F2');
  var f3 = Future.delayed(Duration(seconds: 3), () => 'F3');
  var f4 = Future.delayed(Duration(seconds: 1), () => 'F4');
  var f5 = Future.delayed(
      Duration(seconds: 1), () => Future.error('Erro na execução'));

  print(DateTime.now().toIso8601String());
  Future.wait([f1, f2, f3, f4, f5])
  .then((onValue) {
    print(DateTime.now().toIso8601String());
    print(onValue[0]);
    print(onValue[1]);
    print(onValue[2]);
    print(onValue[3]);
  }).catchError((onError){
    print(DateTime.now().toIso8601String());
    print(onError);
  });

  print('Fim Main');
}
