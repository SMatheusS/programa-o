void main() {

  Fruta fruta1 = Fruta("maça", 90, "verde", "doce");
  print(fruta1);
  print(fruta1.nome);
  print(fruta1.peso);
  // print(Fruta(nome, peso, cor, tipo))

  Fruta fruta2 = Fruta("banana", 40.5, "amarela", "normal");
  print("");
  print(fruta2);
  print(fruta2.nome);
  print(fruta2.peso);

  Fruta fruta3 = Fruta("pera", 45, "verde", "azeda", 11);
  print("");
  print(fruta3.nome);
  print(fruta3.isDias);

  Duras coco = Duras("coco", 300, "marrom", "fruta", true);
  print("");
  print(coco.nome);
  coco.chamar();
  
  //print(fruta3.func_dias(10));

}

class Fruta {
  String nome;
  double peso;
  String cor;
  String tipo;
  int? isDias;

  // classe permitir fazer vários tipos de objetos similiares, mas com açoes diferentes. Ficaria muito grande um códico com várias variaveis para cada vez que for adicionar algo, como uma nova fruta 
  Fruta(this.nome, this.peso, this.cor, this.tipo, [this.isDias]); // construtores da classe
/*
  int func_dias( isDias ) {
    return isDias;
  } // tentativa de fazer uma funçao dentro de uma class, recebendo um valor da variel e retornando algo
*/
}

class Duras extends Fruta {
  bool isDura;

  Duras(String nome, double peso, String cor, String tipo, this.isDura)
  : super(nome, peso, cor, tipo);

  void chamar() {
    if(isDura) {
      print("O alimento $nome é duro");
    } else {
      print("O alimento $nome não é duro");
    } // esse boleano de Duras não faz sentido, pois qualquer objeto dessa class já vai ser do tipo duro pelo próprio nome da class, faz sentido botar esse método na class de Fruta, mas foi mais para aprender e recapitular sobre métodos
  }
}

/*
    O que é uma Classe:
        Classes são os moldes que usamos para construir e representar coisas do mundo real. A partir desses moldes, podemos construir objetos específicos e com características semelhantes. Falando de forma mais técnica, criar uma classe é uma forma modularizada e produtiva de escrever código. Nelas, conseguimos representar as características de objetos através das Propriedades e suas ações através dos métodos.

    O que são as Propriedades de uma Classe:
        Vimos que as propriedades de uma classe são as características (informações) que desejamos registrar sobre os objetos que serão gerados por essa classe. Aprendemos que algumas informações podem ser informadas já na criação da classe, mas outras precisarão vir externamente via Construtor.

    O que é o Construtor:
        Aprendemos também que Construtores são como aquele “check-list” de passos a serem tomados antes de começar uma viagem: é o método que será executado assim que um objeto dessa classe for criado. A sua principal tarefa normalmente é inicializar as Propriedades, mas os Construtores também podem executar ações iniciais que a classe possa demandar.

    O que são Métodos:
        Por fim, vimos que os Métodos são como funções dentro de uma classe e determinam os comportamentos que os objetos que serão gerados por essa classe terão.
*/