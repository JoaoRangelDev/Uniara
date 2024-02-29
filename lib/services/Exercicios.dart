class Exercicios{
  int fatorial({required int num}){
    int soma = 0;
    int fat = 1;

    for (int i = 1; i <= num; i++) {
      fat = fat * i;
      soma += fat;
    }

    return soma;
  }

  int somaNumerosPares({required int num}){
    int soma = 0;

    for (int i = 1; i <= num; i++) {
      if (i % 2 == 0) {
        soma += i;
      }
    }

    return soma;

  }

  bool verificaPrimo({required int num}){
    bool primo = true;

    for (int i = 2; i * i <= num; i++) {
      if (num % i == 0) {
        primo = false;
        break;
      }
    }

    return primo;

  }

  bool verificaPalindromo({required String palavra}){
    String palavraInv= "";

    for (int i = palavra.length - 1; i >= 0; i--) {
      palavraInv += palavra[i];
    }

    bool ehPalindromo = palavra == palavraInv;

    return ehPalindromo;

  }

  double temperaturaCelsiusParaFahrenheit({required double temp}){
    double tempFahrenheit = (temp * 9/5) + 32;

    return tempFahrenheit;

  }

  double calculaIMC({required double altura, required double peso}){
    double imc = peso / (altura * altura);

    return imc;

  }

  List<int> tabuada({required int num}){
    List<int> listaTabuada = [];

    for (int i = 1; i <= 10; i++) {
      // Multiplicar o número pelo valor de i
      int resultado = num * i;

      listaTabuada.add(resultado);
    }

    return listaTabuada;
  }

}