import 'package:dart_poo/7_polimorfismo/medico.dart';

class Obstetra extends Medico{
  @override
  void operar() {
    print('Faz a cirurgia para retirar o BEBE');
  }
}