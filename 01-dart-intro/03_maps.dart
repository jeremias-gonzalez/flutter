void main(){
  final Map <String , dynamic> pokemon ={
    
    'name':'Jere',
    'hp':100,
    'isAlive': true,
    'abilities':<String>['impostor'],
    'sprites':{
      1:'ditto/front.png',
      2:'dittp/back.png',
    }
    };
  
  
  print (pokemon);  
  print ('Name:${pokemon['name']}');
  print ('hp :${pokemon['hp']}');
  
  
  print ('Back : ${pokemon['sprites'][2]}');
  print ('Front : ${pokemon['sprites'][1]}');
  
}