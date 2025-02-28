import 'package:dart_poo/12_callable_class/enviaremail.dart';

void main(){
  var enviarEmail = EnviarEmail();


  enviarEmail('rapha@email.com');
  print('----');
  enviarEmail.enviar('rapha@email.com');
}