class EnviarEmail{
  bool call(String email){
    print('Enviado pelo CAllABLE');
    return enviar(email);
  }
  bool enviar (String enviar){
    print('Enviado pelo metodo normal!');
    return true;
  }
}