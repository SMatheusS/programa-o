/*
  Existe uma forma para reutilizarmos os parâmetros, ou seja, de herdar os parâmetros de uma classe, para não precisarmos escrevê-los repetidamente sempre que criamos uma classe. Além de herdá-los, também podemos criar parâmetros nas classes novas.
  Com o conceito de herança, que facilitará a construção das nossas classes que reutilizam parâmetros e métodos.
*/

void main(){
  Alimentos pizza = Alimentos("pizza", 450, "vermelho");
  Legumes cenoura = Legumes("cenoura", 50, "amarela", true);
  Fruta banana = Fruta("banana", 120, "amarela", "doce", 15);
  Nozes castanha = Nozes("amendoa", 25, "marrom", "bom", 30, 10);

  pizza.printAlimento();
  cenoura.printAlimento();
  banana.printAlimento();
  castanha.printAlimento();
  print("");

  banana.fazerSuco(); // chamando os métodos das classes
  castanha.existeRefri(true);
  castanha.existeRefri(false);
  cenoura.preciasaCozinhar(true);
  cenoura.preciasaCozinhar(false);

}

class Alimentos{
  String nome;
  double peso;
  String cor;
  
  Alimentos(this.nome, this.peso, this.cor);

  void printAlimento() { //Método == função dentro de uma classe
    print("esse(a) $nome pesa $peso gramas e tem cor $cor");
  }
}

// extends, extender as propiedade da class "pai" para as classes "filhos"
class Legumes extends Alimentos{
  bool isPresicaCosinhar;
                                             // this referência apenas a sua class
  Legumes(String nome, double peso, String cor, this.isPresicaCosinhar) 
  : super(nome, peso, cor); // super está chamando o pai ou mãe da função, que no caso é a função Alimento

  void preciasaCozinhar(bool cozinhar) {
    if(cozinhar){
      print("Seu legume: $nome precisa cozinhar");
    } else {
      print("Seu legume: $nome nao precisa cozinhar");
    }
  }
}

class Fruta extends Alimentos{
  String sabor;
  int diaDesdeColheita;
  bool? isMadura;
  
  Fruta(String nome, double peso, String cor, this.sabor, this.diaDesdeColheita, {this.isMadura})
  : super(nome, peso, cor);

  void fazerSuco() {
    print("voce fez um ótimo suco de $nome");
  }
}

class Nozes extends Fruta{
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor, int diaDesdeColheita, this.porcentagemOleoNatural)
  : super(nome, peso, cor, sabor, diaDesdeColheita);

  void existeRefri(bool existe) {
    if(existe){
      print("tem refri de $nome");
    } else {
      print("não tem refri de $nome");
    }
  }
}