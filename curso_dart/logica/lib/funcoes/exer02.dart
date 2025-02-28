import 'dart:io';

void main() {
  print("Digite uma Letra:");
  var letra = stdin.readLineSync() as String;
  String  v = vogal(letra);
  print(v);
  evogal(letra);
}

String vogal(letra){
  if(letra == 'a' || letra == 'e' || letra == 'i' || letra == 'o' || letra == 'u'){
    return "É vogal";
  } else {
    return "Não é vogal";
  }
}

void evogal(vogal) {
  switch (vogal) {
    case 'a':
      print("É uma vogal");
      break;
    case 'e':
      print("É uma vogal");
      break;
    case 'i':
      print("É uma vogal");
      break;
    case 'o':
      print("É uma vogal");
      break;
    case 'u':
      print("É uma vogal");
      break;
    default:
      print("Não é Vogal");
  }
}
