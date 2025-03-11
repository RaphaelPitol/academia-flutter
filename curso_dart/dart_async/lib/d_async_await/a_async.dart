void main(){
  final semAsync = metodoAssincronosemAsync();
  final comAsync = metodoAssincronoComAsync();
  final voidAsync = metodoAssincronoVoid();

  print(comAsync);
  semAsync.then(print);
  comAsync.then(print);
  voidAsync.then(print);

}

// sempre que colocar o async colocar o tipo do
// retorno ex Future<String>

Future<String> metodoAssincronosemAsync(){
  return Future.value('Metodo Asincrono sem Async');
}

//tipando o retorno do future
Future<String> metodoAssincronoComAsync() async {
  return 'Metodo com Async';
}

//este metodo tem prioridade no event loop
Future<void> metodoAssincronoVoid() async {
  return Future.value('Metodo void Assincrono');
}