void main(){
 
  final numbers = [12,3,4,5,5,5,5,6,6,6,6,9,8,10];
  
  print('List orginal $numbers');
  print('Length ${numbers.length}');
  print('Index 0: ${numbers[0]}'); //primera posicion
  print('First: ${numbers.first}');  //primera posicion
  print('Reversed: ${numbers.reversed}');
  
  final reversedNumbers = numbers.reversed;
  print('iterable:$reversedNumbers');
  print('List:${reversedNumbers.toList()}');
  print('Set:${reversedNumbers.toSet()}'); //en un set sus valores son unicos , es decir que no se repiten.
  
  final numbersGreaterThan5 = numbers.where((num){
    return num > 5;
  });
  
  print ('Mayor que 5 : $numbersGreaterThan5'); //por defecto es un iterable, puesto que se repite ya que la condicion es que sea mayor a 5
  print ('Mayor que 5 pero que no se repitan : ${numbersGreaterThan5.toSet()}');//Sets los cuales no se repiten
  
  
  
}