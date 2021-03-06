// Autor: Irving Cesar

import 'dart:io';


class Calculadora {
  double num1;
  double num2;
  String op;

  Calculadora(this.num1, this.num2, this.op);

  // Operações
  adicao(n1, n2){ return n1 + n2; }

  divisao(n1, n2) {
    if (n2 != 0) {
       return n1 / n2;
    } else {
      print('Não é possível dividir por ZERO!');
      return "inexistente";
    }
  }  

  multiplicacao(n1, n2) { return n1 * n2; }

  subtracao(n1, n2) { return n1 - n2; } 

  // Passando valores
  calcular() {
    
    if (this.op == "a") {
      return adicao(this.num1, this.num2);

    } else if (this.op == "d") {
      return divisao(this.num1, this.num2);

    } else if (this.op == "m") {
      return multiplicacao(this.num1, this.num2);

    } else if (this.op == "s") {
      return subtracao(this.num1, this.num2);
      
    } else {
      print("Não existe essa operação!");
    }
  }

}

void main() {

  print('Insira o primeiro número: ');
  String n1 = stdin.readLineSync()!;

  print('Insira o segundo número:');
  String n2 = stdin.readLineSync()!;

  // verificando se é número
  numCheck(numero) {
    var check = double.parse(numero).toDouble();

    if (!check.isNaN) {
      return true;  
    } else {
      throw Exception('Não é um número!');      
    }
  }
  
  try {
    if (numCheck(n1) || numCheck(n2)) {
      double num1 = double.parse(n1);
      double num2 = double.parse(n2);

      print('Qual a operação você deseja realizar?\nA - Adição\nD - Divisão\nM - Multiplicação\nS - Subtração');
      String? op = stdin.readLineSync()!;
      op = op.toLowerCase();
      
      Calculadora calculadora = new Calculadora(num1, num2, op);
      print('Resultado = ${calculadora.calcular()}');
    }

  } catch (e){
    print('Insira apenas números!');
  }

}