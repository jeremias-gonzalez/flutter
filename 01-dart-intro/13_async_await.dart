void main() async {
  print('Inicio del programa');
  try{
  final value = await httpGet('https://velocisite.com.ar');
  print(value);
    } catch(err){
    print('tenemos un error:$err');
  }
  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));
  throw 'error de  la aplicacion';
  
  
  
//   return 'Tenemos un valor de la peticion';

  //return 'Respuesta de la peticion http';
}
