import 'package:dart_poo/5_heranca_covariant/banana.dart';
import 'package:dart_poo/5_heranca_covariant/macaco.dart';

void main(){
  var macaco = Macaco();
  macaco.comer(Banana(tipo: 'Naninca'));
}