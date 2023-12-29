void main() {
  func_chamada();

}
  // StackOverflowException

func_chamada() {
  print("hello humans!");
  func_chamada();

}