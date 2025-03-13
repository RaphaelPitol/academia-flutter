import 'dart:convert';

void main(){

  final jsonCep = '''
{
  "cep": "87504-000",
  "logradouro": "Rua B",
  "numero": "1010",
  "bairro": "centro",
  "cidade": "Umuarama"
}
''';
//decodificando json
final jsonData = json.decode(jsonCep);

print(jsonData['cidade']);


//transformando em json
final jsonMap = {
  "curso": "Academia do Flutter",
  "totalAlunos": 800
};

final jsonDataMap = json.encode(jsonMap);
print(jsonDataMap);


}