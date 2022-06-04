class HellorWorld {
  late String mensagem;

  Saudacao(){
    print(mensagem);
  }
}

main() {
  var hello = HellorWorld();
  hello.mensagem  = "Hello, world!";
  hello.Saudacao();
}