import 'dart:math';

// Classe abstrata para representar uma forma
abstract class Forma {
  double calcularArea();
}

// Classe para representar um retângulo
class Retangulo extends Forma {
  double base;
  double altura;

  Retangulo(this.base, this.altura);

  @override
  double calcularArea() {
    return base * altura;
  }
}

// Classe para representar um círculo
class Circulo extends Forma {
  double raio;

  Circulo(this.raio);

  @override
  double calcularArea() {
    return pi * raio * raio;
  }
}

void main() {
  // Criar uma forma de retângulo
  final retangulo = Retangulo(5.0, 4.0);

  // Criar uma forma de círculo
  final circulo = Circulo(3.0);

  // Calcular e imprimir a área do retângulo
  print('Área do Retângulo: ${retangulo.calcularArea()}');

  // Calcular e imprimir a área do círculo
  print('Área do Círculo: ${circulo.calcularArea()}');
}
