void main() async {
  print('Inicio del programa');
  try{
  final value = await httpGet('https://velocisite.com.ar');
  print('exito:$value');
    }on Exception{
     print('Tenemos una Exception '); 
   }catch(err){
    print('Algo terrible paso:$err');
  }finally{
    print('Fin del try y el catch');
  }
  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));
 
  throw new Exception ('No hay parametros en el URL');
  
  
  // throw 'error de  la aplicacion';
  
  
  
//   return 'Tenemos un valor de la peticion';

  //return 'Respuesta de la peticion http';
}
