void main () {
  var teatro = [];
  var poltronas = 6;
  var fileiras = 5;

  for (var i = 0; i < fileiras; i++) {
    var poltronaFileira = [];
    for (var i = 0; i < poltronas; i++) {
      poltronaFileira.add(i);
    }
    teatro.add(poltronaFileira);
  }
  
  print('Mapa do Teatro');
  print('############################');

  for (var f = 0; f < fileiras; f++) {

    var poltrona = '';
    for (var p = 0; p < poltronas; p++) {
      poltrona += 'P($f$p):${teatro[f][p]} | ';
    }
    print(poltrona);
  }
  print('############################');
}