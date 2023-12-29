void main() {

  int energia = 100;

  while (energia > 0) {
    print(energia);
    energia = energia - 1;
  
    // break = parar um loop sob uma condiçao
    if (energia < 90) {
      break; 
    }
  }
  print("fora do loop");

/*
  repetiçao infinita
  while(true) {
    print("infinito");

  }
*/
}