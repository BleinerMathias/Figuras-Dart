// Exercício feito e testado no dartpad.dev

import 'dart:math';

class Figura {
  double x;
  double y;

  Figura(this.x, this.y);

  String area() {
    return "Área não definida";
  }
}

class Circulo extends Figura {
  double raio;

  Circulo(double x, double y, this.raio) : super(x, y);

  double circunferencia() {
    return 2 * pi * raio;
  }
  
  double diametro() {
    return 2 * raio;
  }
  
  @override
  String area() {
    double areaCalc = pi * raio * raio;
    return "${areaCalc}";
  }
}

class Retangulo extends Figura {
  double largura;
  double altura;

  Retangulo(double x, double y, this.largura, this.altura) : super(x, y);
  
  bool isQuadrado(){
    return this.largura == this.altura;
  }

  @override
  String area() {
    double areaCalculada = largura * altura;
    return "$areaCalculada";
  }
}


class Triangulo extends Figura {
  double face1;
  double face2;
  double face3;

  Triangulo(double x, double y, this.face1, this.face2, this.face3) : super(x, y);

  
  String getTipo() {
    if (face1 == face2 && face2 == face3) {
      return "Triângulo Equilátero";
    } else if (face1 == face2 || face1 == face3 || face2 == face3) {
      return "Triângulo Isósceles";
    } else {
      return "Triângulo Escaleno";
    }
  }
  
  @override
  String area() {
    // Fórmula de Heron
    double s = (face1 + face2 + face3) / 2;
    double areaCalculada = sqrt(s * (s - face1) * (s - face2) * (s - face3));
    return "$areaCalculada";
  }
}

void main() {
  // Criando um círculo com raio 3 e centro (x=3, y=4)
  Circulo circulo = Circulo(3, 4, 3);
  print("Criado Círculo em: X=3 y=4"); 
  print("Àrea: "+ circulo.area()); 
  print("Diâmetro: ${circulo.diametro()}");
  print("Circunferência: ${circulo.circunferencia()}"); 
  
  print("");

  // Criando um retângulo com largura 5, altura 6 (x=1, y=2)
  Retangulo retangulo = Retangulo(1, 2, 5, 6);
  print("Criado Retangulo em: X=1 y=2 com largura 5, altura 6"); 
  print("Àrea: "+ retangulo.area()); 
  retangulo.isQuadrado() ? print("É um Quadrado") : print("Não é um quadrado");
  
  print("");
  
   // Criando um quadrado com largura 5, altura 5 (x=10, y=10)
  Retangulo retanguloDois = Retangulo(10, 10, 5, 5);
  print("Criado Retangulo em: X=10 y=10 com largura 5, altura 5"); 
  print("Àrea: "+ retanguloDois.area()); 
  retanguloDois.isQuadrado() ? print("É um Quadrado") : print("Não é um quadrado");
  
  print("");
  
  // Criando um triângulo com lados 3, 4 e 5 e (x=5, y=6)
  Triangulo triangulo = Triangulo(5, 6, 3, 4, 5);
  print("Criado triângulo em: X=10 y=10 com lados 3, 4 e 5 "); 
  print("Àrea: "+ triangulo.area()); 
  print("${triangulo.getTipo()}");
  
  print("");
  
  // Criando um triângulo com lados 4, 4 e 4 e (x=25, y=27)
  Triangulo trianguloDois = Triangulo(25, 27, 4, 4, 4);
  print("Criado triângulo em: X=25 y=27 com lados 4, 4 e 4 "); 
  print("Àrea: "+ trianguloDois.area()); 
  print("${trianguloDois.getTipo()}");
    
  print("");
  
  // Criando um triângulo com lados 19, 19 e 24 e (x=30, y=32)
  Triangulo trianguloTres = Triangulo(30, 32, 19, 19, 24);
  print("Criado triângulo em: X=30 y=32 com lados 19, 19 e 24 "); 
  print("Àrea: "+ trianguloTres.area()); 
  print("${trianguloTres.getTipo()}");
  
}