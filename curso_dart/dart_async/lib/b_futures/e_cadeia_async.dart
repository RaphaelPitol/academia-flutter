void main() {
  func1().then((onValue) {
    func2(onValue).then((onValue) => print(onValue));
  });

  func1()
      .then((onValue) => func2(onValue))
      .then((onValue) => print('2: $onValue'));

  var fut1 = func1();
  var fut2 = fut1.then((onValue) => func2(onValue));

  fut2.then((onValue) => print('3ºexemplo: $onValue'));
}

Future<String> func1() {
  return Future.delayed(Duration(seconds: 1), () => 'Parametro 1');
}

Future<String> func2(String parametro) {
  return Future.value('Parametro recebido e processado $parametro');
}
