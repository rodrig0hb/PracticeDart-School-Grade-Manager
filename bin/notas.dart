import 'dart:io';

void main() {
  Map<String, List<double>> alunos  = {};
  menu(alunos);
}

String getComando() {
  print('''
  Bem-vindo ao gerenciador de notas escolares!
  Digite um dos comandos disponíveis:
  1 - P/ Adicionar aluno e as notas que ele teve.  
  2 - P/ Gerar a média das notas de um aluno.
  3 - P/ Listar as notas dos alunos registrados.
  4 - P/ Reiniciar as notas de um aluno.
  5 - P/ Sair do programa.
  ''');
  List<String> comandos = ['1', '2', '3', '4', '5'];
  String? entrada = '';
  entrada = stdin.readLineSync();

  if (entrada == null || !comandos.contains(entrada)) {
    print('Comando inválido. Tente novamente.');
    return getComando();
  }

  return entrada;
}

Map<String, List<double>> adicionarNota(Map<String, List<double>> alunos) {
  print('Digite o nome do aluno que deseja registrar:');
  String? nomeInput = stdin.readLineSync()?.trim();
  if (nomeInput == null || nomeInput.isEmpty) {
    print('Nome inválido ou vázio. Tente novamente.');
    return adicionarNota(alunos);
  }
  String nome = nomeInput;
  List<double> notas = alunos.containsKey(nome) ? alunos[nome]! : [];
  // Aqui tô atribuindo variável notas e verificando ao mesmo tempo se a key nome já existe no mapa alunos.
  // Se existir, a variável notas será o retorno da key nome do mapa alunos.
  // Se não existir recebe uma lista vazia que será atribuída como valor junto ao nome que será atribuído com chave quando ATUALIZAR O MAPA mais em baixo.
  
  print('Aluno $nome registrado com sucesso. Adicione as notas.');
  print('--- Digite uma nota ou tecle ENTER (vazio) para terminar. ---');
  // LOOP PARA ADICIONAR VÁRIAS NOTAS
  while (true) {
    print('Nota: ');
    String? notaString = stdin.readLineSync()?.trim();
    if (notaString == null || notaString.isEmpty) {
      break; // Acredito que quando for vazia ou nula vai gerar um false e sair do laço.
    }
    
    // Converter a string para double.
    double? nota = double.tryParse(notaString);
    if (nota != null) {
      notas.add(nota);
      print('Nota ${nota.toStringAsFixed(2)} adicionada com sucesso.');
    } else {
      print('"$notaString" não é um valor numérico válido. Tente novamente.');
    }
  }

  // ATUALIZAR O MAPA ALUNOS
  // Usa o operador [] para adicionar ou atualizar a chave 'nome'
  alunos[nome] = notas;

  print('\n[RESUMO] Aluno "$nome" agora tem ${notas.length} notas registradas.\n');
  return alunos;
}

void calcularMedia(Map<String, List<double>> alunos) {
  print('Digite o nome do aluno para calcular a média:');
  String? nome = stdin.readLineSync()?.trim();
  if (nome == null || nome.isEmpty) {
    print('Nome inválido ou vázio. Tente novamente.');
    return calcularMedia(alunos);
  }
  if (!alunos.containsKey(nome)) {
    print('Aluno "$nome" não encontrado. Tente novamente.');
    return calcularMedia(alunos);
  }
  List<double> notas = alunos[nome]!;
  if (notas.isEmpty) {
    print('O aluno "$nome" não tem notas registradas.');
    return calcularMedia(alunos);
  } else {
    double soma = 0.0;
    for (double nota in notas) {
    soma += nota;
    }
    double media = soma / notas.length;
    print ('\n A média das notas do aluno "$nome" é: ${media.toStringAsFixed(2)}\n');
    return;
  }
}
  

void listarNotas(Map<String, List<double>> alunos) {
  if (alunos.isEmpty) {
    print('Nenhuma aluno registrado.');
  } else {
    print('\n--- Alunos Registrados ---:');
    alunos.forEach((nome, notas) {
      // forEach é um método legal frente o for tradicional com contador (i=0; i<length; i++) se quiser iterar sobre todos elementos sem controlar o fluxo.
      print ('Aluno : $nome');
      print ('Notas: ${notas.join(', ')}\n');
    });
    }
  }

void reiniciarNotas(Map<String, List<double>> alunos) {
  print('Digite o nome do aluno para reiniciar as notas:');
  String? nome = stdin.readLineSync()?.trim();
  if (nome == null || nome.isEmpty) {
    print('Nome inválido ou vázio. Tente novamente.');
    return reiniciarNotas(alunos);
  }
  if (!alunos.containsKey(nome)) {
    print('Aluno "$nome" não encontrado. Tente novamente.');
    return reiniciarNotas(alunos);
  }
  alunos[nome] = [];
  print('As notas do aluno "$nome" foram reiniciadas com sucesso.');
  print('Se quiser reiniciar a lista de alunos, reinicie o programa.\n');
}


void menu(Map<String, List<double>> alunos) {
  String comando = getComando();
  switch (comando) {
    case '1':
      adicionarNota(alunos);
      menu(alunos);
      break;
    case '2':
      calcularMedia(alunos);
      menu(alunos);
      break;
    case '3':
      listarNotas(alunos);
      menu(alunos);
      break;
    case '4':
      // Reiniciar notas de aluno functionality to be implemented
      print('Funcionalidade de reiniciar notas ainda não implementada.');
      menu(alunos);
      break;
    case '5':
      print('Saindo do programa. Até breve!');
      exit(0);
    }
  }