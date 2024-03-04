import 'package:trabalhoandre/services/Exercicios.dart';

main(List<String> arguments){
  Exercicios exercicios = Exercicios();

  // Exercicios da AULA 3
  int fatorial = exercicios.fatorial(num: 2);
  print("Fatorial: $fatorial\n");

  int somaNumerosPares = exercicios.somaNumerosPares(num: 450);
  print("Soma dos numeros pares é: $somaNumerosPares\n");

  bool numeroPrimo = exercicios.verificaPrimo(num: 101);
  print(numeroPrimo ? 'É PRIMO\n' : "Não é PRIMO\n");

  double imc = exercicios.calculaIMC(altura: 1.80, peso: 78);
  print("IMC: $imc");

  List<int> listTabuada = exercicios.tabuada(num: 10);
  for(var num in listTabuada){
    print("Tabuada: $num");
  }

  bool palindromo = exercicios.verificaPalindromo(palavra: "ovo");
  print(palindromo ? 'É Palindromo\n' : "Não é Palindromo\n");

  double temp = exercicios.temperaturaCelsiusParaFahrenheit(temp: 35);
  print("Temperatura Fahrenheit: $temp");

  //Exercicios da Aula 4
  // exercicios.lerNumeroPINP();
  // exercicios.lerNumeroSucessorAntecessor();
  // exercicios.salarioMinimo();
  //  exercicios.reajusteSalario();
  // exercicios.trueOrFalse();
  // exercicios.ordemDescrecente();
  // exercicios.calculaIMCeMostra();
  exercicios.media();
  exercicios.mediaFinal();
}