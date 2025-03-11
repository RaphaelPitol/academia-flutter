import 'dart:async';

Future<void> main() async {
  final usuario = UsuarioRepository();
  usuario.salvarComum((callbackSuccess){
    print(callbackSuccess);
  }, (callbackErro){
    print(callbackErro);
  });



  try {
  final sucesso = await usuario.salvarCompleter();
  print('Sucesso Completer $sucesso');
} catch (e) {
  print('Erro Completer $e');
}
}

class UsuarioRepository {
  void salvarComum(void Function(String) callbackSuccess,
      void Function(String) callbackErro) {
    Timer(Duration(seconds: 2), () {
      try {
        // throw Exception();
        callbackSuccess('Usuario salvo com sucesso');
      } catch (e) {
        callbackErro('Erro ao salvar $e');
      }
    });
  }

  Future<String> salvarCompleter(){
    final completer = Completer<String>();
     Timer(Duration(seconds: 2), () {
      try {
        // throw Exception();
        completer.complete('Usuario salvo com sucesso');
      } catch (e) {
        completer.completeError('Erro ao salvar $e');
      }
    });
    return completer.future;
  }
}
