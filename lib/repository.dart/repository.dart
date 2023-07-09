class Perguntas{
  List perguntas = [
    {
      'pergunta': 'Em que instituição esta localizado o LApp?',
      'resposta': [
        {
          'r1': 'IFAL',
          'r2': 'UFAL',
          'r3': 'CESMAC',
        },
      ],
      'certa': 'IFAL'
    },
    {
      'pergunta': 'Qual curso é aprendido nas quartas-feiras à tarde no LApp?',
      'resposta': [
        {
          'r1': 'Reactive Native',
          'r2': 'Python',
          'r3': 'Flutter',
        },
      ],
      'certa': 'Flutter'
    },
    {
      'pergunta': 'Qual o nome do professor de Flutter?',
      'resposta': [
        {
          'r1': 'Ricardo',
          'r2': 'Flávio',
          'r3': 'Augusto',
        },
      ],
      'certa': 'Flávio'
    }
  ];
  int pontuacao = 0;


  Perguntas([perguntas, pontuacao]){
    perguntas = this.perguntas;
    pontuacao = this.pontuacao; 
  } 
}