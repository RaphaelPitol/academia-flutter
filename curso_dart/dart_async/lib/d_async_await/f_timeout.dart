import 'dart:async';

void main() async{
  final aguardando = inserindoAlgoBemLento();
  print(DateTime.now().toIso8601String());

  // aguardando.timeout(Duration(seconds: 1), onTimeout: () {
  //   print('Terminou com TimeOut');
  // }).then((onValue) {
  //   print('Terminou a execução');
  // }).catchError((onError) {
  //   print('Terminou com erro: $onError');
  // });

  try{
    final aguardando = await inserindoAlgoBemLento().timeout(Duration(seconds: 1));

  }on TimeoutException catch (e){
    print('Finalizou com erro: $e');
  }
}

Future<void> inserindoAlgoBemLento() {
  return Future.delayed(Duration(seconds: 3), () {
    print('Terminou o insert');
    print(DateTime.now().toIso8601String());
  });
}
