import 'package:dart_poo/19_extensions/pessoa.dart';

extension PessoaExtencion on Pessoa{

  String saudacao(String msg){
    return '$msg $nome';
  }
}