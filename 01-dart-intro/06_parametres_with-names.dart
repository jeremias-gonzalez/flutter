void main(){
 
  print(greetEveryone());
  print ('Suma : ${addTwoNumbers(10,20)}');
  print ('Suma con funcion flecha  : ${suma(10,20)}');
  print ('Otra suma: ${otraSuma(10,20)} ');
  
  print(greetPerson(name:'Jere', message: 'Hi'));
}


// dos tipos de funciones

String greetEveryone(){ //Positivamente podemos desarrollar un cuerpo a comparacion de la funcion callbak o funcion flecha.
  return 'Hola mundo';
} 
String greetEveryoneTwo() =>  'Hola mundo'; //funcion flecha , no se puede elaborar un cuerpo


int addTwoNumbers (int a, int b){
  
  return a+b;
  
}
int suma(int a , int b) => a+b;

int otraSuma(int a , [int b = 0]){
  return a+b;
}

String greetPerson({ required String name, String? message ='Hola'}){
 
  return '$message Jere';
}