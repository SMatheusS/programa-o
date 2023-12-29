void main() {

  // const = nao permiti alterar o valor depois
  const int idade = 18;

//  idade = 19; // erro por nao permitir a mudança
  String mudar0 = "oi, eu tenho $idade anos";
//  String mudar = "oi, eu tenho ${idade = 19} anos"; // erro pq esta tentando alterar o valor de idade

  print(mudar0);
//  print(mudar);

  print("");

  // final = pode ser variavel nula, podendo ter seu valor depois
  final String nome;
  nome = "matheus";

  print(nome);

  print("");

  // var = dart detecta o tipo de vaviavel automaticamente, mas nao use muito isso
  var amor = 3.14159265359; // pi
  print(amor);

}