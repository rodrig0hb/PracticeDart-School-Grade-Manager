void main() {
  List <String> nomes = ['Ana', 'Bruno', 'Carlos', 'Daniela'];
  for (String nome in nomes) {
    print ('Nome: $nome');
  }

  String frase = 'Parou! Este código não continua.';
  int i = 0;
  do {print(frase[i]);
    i++;
  } while (i < frase.length && frase[i - 1] != '!');
}