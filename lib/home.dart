import 'package:flutter/material.dart';
import 'package:quizz/resultado.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indexPergunta = 0;
  int pontuacao = 0;
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
          'r3': 'Carlos',
        },
      ],
      'certa': 'Flávio'
    }
  ];

  void _proximaPergunta(String resposta) {
    setState(() {
      perguntas;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizz LApp'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Card(
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: Center(
                    child: Text(
                      '${perguntas[indexPergunta]['pergunta']}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                if (perguntas[indexPergunta]['resposta'][0]['r1'] ==
                    perguntas[indexPergunta]['certa']) {
                  pontuacao++;
                }
                if (indexPergunta < perguntas.length - 1) {
                  indexPergunta++;
                  _proximaPergunta(
                      perguntas[indexPergunta]['resposta'][0]['r1']);
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Resultado(
                        resultado: pontuacao.toString(),
                      ),
                    ),
                  );
                }
              },
              child: Text(perguntas[indexPergunta]['resposta'][0]['r1']),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (perguntas[indexPergunta]['resposta'][0]['r2'] ==
                    perguntas[indexPergunta]['certa']) {
                  pontuacao++;
                }
                if (indexPergunta < perguntas.length - 1) {
                  indexPergunta++;
                  _proximaPergunta(
                      perguntas[indexPergunta]['resposta'][0]['r2']);
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Resultado(
                        resultado: pontuacao.toString(),
                      ),
                    ),
                  );
                }
              },
              child: Text(perguntas[indexPergunta]['resposta'][0]['r2']),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (perguntas[indexPergunta]['resposta'][0]['r3'] ==
                    perguntas[indexPergunta]['certa']) {
                  pontuacao++;
                }
                if (indexPergunta < perguntas.length - 1) {
                  indexPergunta++;
                  _proximaPergunta(
                      perguntas[indexPergunta]['resposta'][0]['r3']);
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Resultado(resultado: pontuacao.toString()),
                    ),
                  );
                }
              },
              child: Text(perguntas[indexPergunta]['resposta'][0]['r3']),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Pontuação atual:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              '$pontuacao',
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.lightGreen),
            ),
          ],
        ),
      ),
    );
  }
}
