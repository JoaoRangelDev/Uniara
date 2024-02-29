import 'package:trabalhoandre/services/Exercicios.dart';

main(List<String> arguments){
  Exercicios exercicios = Exercicios();
  int fatorial = exercicios.fatorial(num: 2);
  int somaNumerosPares = exercicios.somaNumerosPares(num: 450);
  bool numeroPrimo = exercicios.verificaPrimo(num: 101);
  double imc = exercicios.calculaIMC(altura: 1.80, peso: 78);
  List<int> listTabuada = exercicios.tabuada(num: 10);
  bool palindromo = exercicios.verificaPalindromo(palavra: "ovo");
  double temp = exercicios.temperaturaCelsiusParaFahrenheit(temp: 35);

}