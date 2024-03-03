# Exercício de entrega
Resolução de exercício para avaliação da disciplina de Desenvolvimento Multiplataforma 1

## O exercício

Este é um programa em Dart que manipula figuras geométricas básicas, como círculos, retângulos e triângulos.

## Funcionalidades

- Calcula a área de cada figura geométrica.
- Para círculos, calcula a circunferência e o diâmetro.
- Para retângulos, verifica se é um quadrado.
- Para triângulos, determina e retorna o tipo do triângulo (equilátero, isósceles ou escaleno) com base nos comprimentos dos lados.

## Estrutura do Código

- A classe `Figura` é a classe base para todas as figuras geométricas. Ela define propriedades e métodos comuns.
- As classes `Circulo`, `Retangulo` e `Triangulo` herdam da classe `Figura` e implementam seus próprios métodos para calcular áreas e outras propriedades específicas.

## Uso

- Clone o repositório.
- Execute o programa em um ambiente Dart compatível ou copie e cole o arquivo no https://dartpad.dev
- Observe a saída do programa para ver os resultados para diferentes figuras geométricas.

## Exemplo de Saída

Criado Círculo em: X=3 y=4
Área: 28.274333882308138
Diâmetro: 6.0
Circunferência: 18.84955592153876

Criado Retângulo em: X=1 y=2 com largura 5, altura 6
Área: 30.0
Não é um quadrado

Criado Retângulo em: X=10 y=10 com largura 5, altura 5
Área: 25.0
É um quadrado

Criado triângulo em: X=5 y=6 com lados 3, 4 e 5
Área: 6.0
Triângulo Escaleno

Criado triângulo em: X=25 y=27 com lados 4, 4 e 4
Área: 6.928203230275509
Triângulo Equilátero

Criado triângulo em: X=30 y=32 com lados 19, 19 e 24
Área: 180.0
Triângulo Isósceles

😁 É isso, bora aprender Flutter depois