void main (){
  //o mapa é uma representação de chave e valor 
  final paciente = <String, String>{
    'nome': 'Raphael Pitol',
    'curso': 'Academia do Fluter'
  };
  //o mapa pode ser nulo se for criado deve conter a chave
  //e o valor não nulos
  Map<String, String>? pacienteNullSafety = null;

  // o mapa e o valor não podem ser ulos mas a chave ode ser null
  Map<String?, String>? pacienteNullSafety2 = {
    null: 'Raphael'
  };

  //o mapa e a chave não pode ser nulos mas o valor pode ser nulo
  Map<String, String?>? pacienteNullSafety3 = {
    'nome': null
  };

  var produtos = <String, String>{};
  // só será adcionadp se a chave não existir
  produtos.putIfAbsent('nome',()=> 'Cerveja');
  produtos.putIfAbsent('nome',()=> 'Refrigerante');
  print(produtos);

  produtos.update('nome',(value)=> 'Refrigerante');
  print(produtos);

  //adicionando chave e valor se não existir  
  produtos.update('preco', (value) => '10', ifAbsent: ()=>'10');

  //recuperando valor mapa
  print(produtos['nome']);
  print(produtos['preco']);


  produtos.forEach((key, value){
    print('Chave: $key: $value');
  });

//fazer algum processo asycrono dentro do map
  for(var entry in produtos.entries){
    print('Chave: ${entry.key}: ${entry.value}');
    
  }

for (var key in produtos.keys) {
  print('Chave: $key');
}  
for (var value in produtos.values) {
  print('Valores: $value');
}  

var novoMapaProdutos = produtos.map((key, value){
  return MapEntry(key, value.toUpperCase());
});
  print(novoMapaProdutos);

  var mapa = <String, Object>{
    'nome': 'Raphael Pitol',
    'curso': [
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Melhor curso do Brasil'
      },
      {
        'nome': 'JavaSpring',
        'descricao': 'Melhores salários do mercado'
      }
    ]
  };

  print(mapa['curso']);
}