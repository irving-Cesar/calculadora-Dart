import 'dart:io';

class Calculadora {
  Calculadora(double num1, double num2, String op);

  // String op =

}

class Operacao {

  subtracao(){} 

  adicao(){}  

  divisao(){}  

  multiplicacao(){}

}

void main() {
  
  print('Insira o primeiro número: ');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Insira agora o segundo número:');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Qual a operação você deseja realizar?\nA - Adição\nD - Divisão\nM - Multiplicação\nS - Subtração');
  String? op = stdin.readLineSync()!;

  Calculadora calculadora = new Calculadora(num1, num2, op);
  calculadora;
}