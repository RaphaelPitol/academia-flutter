void main() {
  func1()
      .then((onValue) => func2())
      .then((onValue) => func3(), onError:(erro){
        print('Tratando erro da func2');
        return func3();
      })
      .then(print)
      .catchError((onError) => print('Erro em alguma das funçoes'));
}

Future<String> func1() {
  print('func1');
  return Future.value('Fazendo algo func1');
}

Future<String> func2() {
  print('func2');
  return Future.error('Fazendo algo func2');
}

Future<String> func3() {
  print('func3');
  return Future.value('Fazendo algo func3');
}
