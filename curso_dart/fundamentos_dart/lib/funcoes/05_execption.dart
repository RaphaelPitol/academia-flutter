void main() {
  var idade = '38 anos';

  try {
    int.parse(idade);
  } on FormatException catch(e, s){
    print(e);
    print(s);
  } finally{
    print('Sempre vai execurtar');
  }
  
}
