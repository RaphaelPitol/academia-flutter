void main(){

  //Future 
  //status
  //-> Incompleto, Completo com Sucesso, Completo com erro

  Future((){
    //Funcao assincrona;

  })
  .then((onValue){
    //registrando funcao que será executada quando o futuro
    //for completado com sucesso
  }).catchError((error){
    //Registrando função que será executada quando o futuro
    //for completado com erro
  }).whenComplete((){
    //Registrando função que será executada SEMPRE(quando erro ou sucesso)
  });
}