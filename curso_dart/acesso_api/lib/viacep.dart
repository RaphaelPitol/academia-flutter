import 'dart:convert';

import 'package:http/http.dart';

void main() async {
  final result =
      await get(Uri.parse('https://viacep.com.br/ws/01001000/json/'));

  // print(result.body);
  // print(result.statusCode);
  // print(result.request);
  // print(result.headers);

  final resultData = json.decode(result.body);
  print(result.body);
  print(resultData);
  print(resultData['logradouro']);
}
