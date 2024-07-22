void main(){
 
  final Hero wolverine  = Hero('Logan','Regeneracion');
  
  print (wolverine);
  print (wolverine.name);
  print (wolverine.power);
}

class Hero{
  String name  = '';
  String power = '';
  // dos formas distintas de inicializar el constructor
  Hero(this.name,this.power);
//   Hero( String pName, String pPower )
//     : name = pName,
//       power= pPower;
 @override
  String toString ()
  {
    return '$name - $power';
  }
}