void main() {

  // lista de unico tipo de valor 
  List<String> lista_nomes = ['matheus', 'bruno', 'chef', 'dre', 'fessor'];
  print(lista_nomes);
  print(lista_nomes.length);
  print(lista_nomes[2]); 
  
  print("");
  List<int> numeros = [10, 11, 12, 13, 14, 15];
  print(numeros);
  print(numeros.length);
  print(numeros[2]);

  // lista dinamica, aceita todos os tipos de valores
  print("");
  List<dynamic> lista = ["matheus", 20, 1.80, "theus", true];
  print(lista);
  print(lista.length);
  print(lista[2]);

  // puxar dados da lista para dentro da string, usasse ${lista[0]}
  //lista é o nome da variavel do objeto e [] onde fica o valor que pretende puxar
  print("");
  String meu = "Oi, eu sou ${lista[0]} e tenho ${lista[1]} anos";
  print(meu);

}
