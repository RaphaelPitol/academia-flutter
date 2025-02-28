import 'package:fundamentos_dart/funcoes/import/soma.dart';
import 'nova_soma.dart' as nova_soma;

void main() {
  int result = soma(10, 20);

  int res = nova_soma.soma(45, 51);

  print(res);

  print(result);
}
