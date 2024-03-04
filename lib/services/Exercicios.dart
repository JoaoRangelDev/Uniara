import 'dart:io';

class Exercicios {
  int fatorial({required int num}) {
    int soma = 0;
    int fat = 1;

    for (int i = 1; i <= num; i++) {
      fat = fat * i;
      soma += fat;
    }

    return soma;
  }

  int somaNumerosPares({required int num}) {
    int soma = 0;

    for (int i = 1; i <= num; i++) {
      if (i % 2 == 0) {
        soma += i;
      }
    }

    return soma;
  }

  bool verificaPrimo({required int num}) {
    bool primo = true;

    for (int i = 2; i * i <= num; i++) {
      if (num % i == 0) {
        primo = false;
        break;
      }
    }

    return primo;
  }

  bool verificaPalindromo({required String palavra}) {
    String palavraInv = "";

    for (int i = palavra.length - 1; i >= 0; i--) {
      palavraInv += palavra[i];
    }

    bool ehPalindromo = palavra == palavraInv;

    return ehPalindromo;
  }

  double temperaturaCelsiusParaFahrenheit({required double temp}) {
    double tempFahrenheit = (temp * 9 / 5) + 32;

    return tempFahrenheit;
  }

  double calculaIMC({required double altura, required double peso}) {
    double imc = peso / (altura * altura);

    return imc;
  }

  List<int> tabuada({required int num}) {
    List<int> listaTabuada = [];

    for (int i = 1; i <= 10; i++) {
      int resultado = num * i;

      listaTabuada.add(resultado);
    }

    return listaTabuada;
  }

  lerNumeroPINP() {
    print("\nDigite um numero: ");
    int num = int.parse(stdin.readLineSync()!);

    print(num % 2 == 0 ? "Esse numero é par" : "Esse numero é impar");
    print(num < 0 ? "Esse numero é negativo" : "Esse numero é positivo");
  }

  lerNumeroSucessorAntecessor() {
    print("\nDigite um numero: ");
    int num = int.parse(stdin.readLineSync()!);

    print("Sucessor é ${num + 1}");
    print("Antecessor é ${num - 1}");
  }

  salarioMinimo() {
    print("\nDigite seu salario: ");
    double salarioMinimo = 1412;
    double salarioUsuario = double.parse(stdin.readLineSync()!);

    double salariosMinimos = salarioUsuario / salarioMinimo;

    print("O salario minimo do usuario é: $salariosMinimos");
  }

  reajusteSalario() {
    print("\nDigite seu salario: ");
    double salarioUsuario = double.parse(stdin.readLineSync()!);

    print("Salario com reajuste pra cima: ${salarioUsuario / 0.95}");
    print("Salario com reajuste pra baixo: ${salarioUsuario * 0.95}");
  }

  trueOrFalse() {
    print("Digite o primeiro valor com 'true' ou 'false': ");
    String? firstBoolString = stdin.readLineSync();
    bool firstBool = firstBoolString?.toLowerCase() == 'true';

    print("Digite o segundo valor 'true' ou 'false': ");
    String? secondBoolString = stdin.readLineSync();
    bool secondBool = secondBoolString?.toLowerCase() == 'true';

    if (firstBool && secondBool) {
      print("Verdadeiro");
    } else {
      print("Falso");
    }
  }

  ordemDescrecente() {
    List<double> lista = [];

    for (var i = 0; i < 3; i++) {
      print("\nDigite o ${i + 1}º numero: ");
      double num = double.parse(stdin.readLineSync()!);
      lista.add(num);
    }

    lista.sort((a, b) => b.compareTo(a));
    print(lista);
  }

  calculaIMCeMostra() {
    print("\nDigite sua altura: ");
    double altura = double.parse(stdin.readLineSync()!);

    print("\nDigite seu peso: ");
    double peso = double.parse(stdin.readLineSync()!);


    double imc = peso / (altura * altura);

    if (imc < 18.5) {
      print("Abaixo do peso");
    } else if (imc < 24.9) {
      print("Peso ideal (parabéns)");
    } else if (imc < 29.9) {
      print("Levemente acima do peso");
    } else if (imc < 34.9) {
      print("Obesidade grau I");
    } else if (imc < 39.9) {
      print("Obesidade grau II (severa)");
    } else {
      print("Obesidade grau III (mórbida)");
    }
  }

  media() {
    double media = 0;

    for (var i = 0; i < 3; i++) {
      print("\nDigite a ${i + 1}ª nota: ");
      double num = double.parse(stdin.readLineSync()!);
      media += num;
    }
    media /= 3;

    print(media);
  }

  mediaFinal() {
    double media = 0;


    print("Digite o nome do aluno: ");
    String? nome = stdin.readLineSync();

    for (var i = 0; i < 4; i++) {
      print("\nDigite a ${i + 1}ª nota: ");
      double num = double.parse(stdin.readLineSync()!);
      media += num;
    }
    media /= 4;

    print("\nAluno: $nome \nMédia: $media \n${media < 7 ? "REPROVADO!" : "Aprovado!"}");
  }

}
