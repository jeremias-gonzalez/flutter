void main() {
  //LOS STREAMS SON UN FLUJO DE DATOS.
  emitNumbers().listen((value){
    print('stream value : $value');
  });
  
}



Stream <int >emitNumbers() {
   return Stream.periodic(const Duration(seconds: 1), (value) {
    //print('desde periodic $value');
     return value;
  }).take(5);
}
