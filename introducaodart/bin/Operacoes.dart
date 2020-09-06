library operacoes;

void main(List<String> arguments) {

  var valorA = 5;
  var valorB = 10;
  var soma = somar(valorA,valorB);

  print('Hello world Function SOMA! $soma');
  print('Hello world Function SOMA!' + soma.toString());
}


int somar(int valorA, int valorB){
  var soma = valorA + valorB;
  return soma;
}