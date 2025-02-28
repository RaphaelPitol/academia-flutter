import 'dart:mirrors';

import 'package:dart_poo/20_metadatas/fazer.dart';
import 'package:dart_poo/20_metadatas/pessoa.dart';

void main() {
  final p1 = Pessoa();

  var instanceMirror = reflect(p1);

  var classMirror = instanceMirror.type;

  classMirror.metadata.forEach((anotation) {
    var instanceAnnotation = anotation.reflectee;
    if (instanceAnnotation is Fazer) {
      print('Da Classe!!!!');
      print('Quem: ${instanceAnnotation.quem}');
      print('Oque: ${instanceAnnotation.oque}');
    }
  });

  classMirror.declarations.values.forEach((declarationMirror) {
    if (declarationMirror is VariableMirror) {
      declarationMirror.metadata.forEach((anotation) {
        var instanceAnnotation = anotation.reflectee;
        if (instanceAnnotation is Fazer) {
          print('Das Variaveis!!!');
          print('Quem: ${instanceAnnotation.quem}');
          print('Oque: ${instanceAnnotation.oque}');
        }
      });
    } else if (declarationMirror is MethodMirror){
      declarationMirror.metadata.forEach((anotation) {
        var instanceAnnotation = anotation.reflectee;
        if (instanceAnnotation is Fazer) {
          print('DO Metodo');
          print('Quem: ${instanceAnnotation.quem}');
          print('Oque: ${instanceAnnotation.oque}');
        }
      });
    }
  });
}
