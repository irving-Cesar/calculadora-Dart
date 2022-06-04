class HelloWorld {
  late String mensagem;

  Saudacao(){
    print(mensagem);
  }
}

main() {
  var hello = HelloWorld();
  hello.mensagem  = "Hello, world!";
  hello.Saudacao();
}
