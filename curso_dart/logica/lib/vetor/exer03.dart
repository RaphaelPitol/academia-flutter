import 'dart:io';

void main(){

  List<String> password = [];
  List<String> passwordCriptpgrafada = [];
  String senha = '';
  String cripto = '';

  for (var i = 1; i <= 6; i++) {
    print('Digite o $iº caracter da senha:');
    var carcter = stdin.readLineSync() as String;
    
    switch (carcter) {
      case 'a':
        password.add(carcter);
        passwordCriptpgrafada.add('z');
        break;
      case 'e':
        password.add(carcter);
        passwordCriptpgrafada.add('3');
        
        break;
      case 'i':
        password.add(carcter);
        passwordCriptpgrafada.add('l');
        
        break;
      case 'o':
        password.add(carcter);
        passwordCriptpgrafada.add('0');
     
        break;
      case 'u':
        password.add(carcter);
        passwordCriptpgrafada.add('\$');
        
        break;
      default:
       i = i - 1;
      print('Caracter Invalido, digite novamente:');
    } 
  }

  for (var i = 0; i < password.length; i++) {
    senha = senha + password[i];
  }
  for (var i = 0; i < password.length; i++) {
    cripto = cripto + passwordCriptpgrafada[i];
  }

  print(senha);
  print(cripto);
}