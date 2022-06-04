import 'dart:io';

class Operacao {
  
  adicao(n1, n2) { return n1 + n2; }  

  divisao(n1, n2) { return n1 / n2; }  

  multiplicacao(n1, n2) { return n1 * n2; }

  subtracao(n1, n2) { return n1 - n2; } 

}

class Calculadora extends Operacao{
  double num1;
  double num2;
  String op;

  Calculadora(this.num1, this.num2, this.op);

  calcular() {
    if (op == "a") {
      adicao(this.num1, this.num2);

    } else if (op == "d") {
      divisao(this.num1, this.num2);

    }else if (op == "m") {
      multiplicacao(this.num1, this.num2);

    }else if (op == "s") {
      subtracao(this.num1, this.num2);

    } else {
      print("Não existe essa operação!");
    }
  }

}

void main() {
  
  print('Insira o primeiro número: ');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Insira agora o segundo número:');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Qual a operação você deseja realizar?\nA - Adição\nD - Divisão\nM - Multiplicação\nS - Subtração');
  String? op = stdin.readLineSync()!;
  op = op.toLowerCase();
  
  Calculadora calculadora = new Calculadora(num1, num2, op);
  calculadora.calcular();
}