void main() {

  int idade = 10; 
  double pesagem = 23.2;

  bool anos = func_fruta(idade, pesagem);

  // sistema de checagem se a fruta esta madura (meses e quilogramas)
  print("A fruta esta madura: ${func_fruta(1, 90.1)}");
  print("A fruta esta madura: $anos");
  print(func_fruta(8, 30, cor: "verde")); // em parenteses são os argumentos

}

bool func_fruta( int idade_fru, double peso_fru, { String? cor} ) { 
  // objetos dentro de parenteses de uma nova função é dado como parâmetros
  // String? = null safety (objetos podendo ter valores nulos, sendo usado no argumento como, cor: "roxo")

  if (idade_fru >= 4 && peso_fru >= 10.0) {
    return true;
  } else {
    return false;
  }   

}

/*  - Parâmetros posicionais são aqueles que precisam estar numa posição específica durante a criação do objeto com o construtor
  - Os parâmetros nomeados não precisam de uma posição ou ordem específica, pois eles recebem e são identificados por nomes específicos.
*/
