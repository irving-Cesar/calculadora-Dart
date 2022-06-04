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
    if (this.op == "a") {
      adicao(this.num1, this.num2);

    } else if (this.op == "d") {
      divisao(this.num1, this.num2);

    }else if (this.op == "m") {
      multiplicacao(this.num1, this.num2);

    }else if (this.op == "s") {
      subtracao(this.num1, this.num2);

    } else {
      print("Não existe essa operação!");
    }
  }

}

void main() {
  
  print('Insira o primeiro número: ');
  String? n1 = stdin.readLineSync()!;

  print('Insira o segundo número:');
  String? n2 = stdin.readLineSync()!;

  if (int.parse(n1).isNaN && int.parse(n2).isNaN) {
    print('Por favor, insira apenas números!');

  } else {
    double num1 = double.parse(n1);
    double num2 = double.parse(n2);

    print('Qual a operação você deseja realizar?\nA - Adição\nD - Divisão\nM - Multiplicação\nS - Subtração');
    String? op = stdin.readLineSync()!;
    op = op.toLowerCase();
    
    Calculadora calculadora = new Calculadora(num1, num2, op);
    print('Resultado = ${calculadora.calcular()}.');
  }

}