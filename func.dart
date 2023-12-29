void main() {

/*
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e Amarela';
  String sabor = 'Doce e cítrica';
*/  int diasDesdeColheita = 19;
  bool isMadura = func_colheita(diasDesdeColheita);

  print(isMadura);
  print(func_colheita(20));
  print("o item é ${func_colheita(100)}");

  //Lembrando que nossa função sempre será chamada, então, caso queiramos fazer alguma alteração, faremos direto na func_colheita(){}. Assim, todos os locais em que ela for chamada receberá essa correção.

} 

bool func_colheita(int dias){

  if (dias >= 20) {
    return true;
  } else {
    return false;
  }

}