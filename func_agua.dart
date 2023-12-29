void main() {

  double litros = 1182.3;
  double agua = func_agua(litros);
  print(agua);
  print(func_agua(20));
  print("A conversao de $litros L para milimetro é $agua");

} 
  // conversao de litros para milimetros 
double func_agua(double litro) {
    return litro * 1000;

/*  if (litro != null){
      print(litro * 1000);
  } 
*/

}