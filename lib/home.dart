import 'package:flutter/material.dart';
import 'package:quizz/repository.dart/repository.dart';
import 'package:quizz/resultado.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Perguntas p = Perguntas();
  int indexPergunta = 0;

  void _proximaPergunta(String resposta) {
    setState(() {
      p.perguntas;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizz LApp'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        automaticallyImplyLeading: false,
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
                      '${p.perguntas[indexPergunta]['pergunta']}',
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
                if (p.perguntas[indexPergunta]['resposta'][0]['r1'] ==
                    p.perguntas[indexPergunta]['certa']) {
                  p.pontuacao++;
                }
                if (indexPergunta < p.perguntas.length - 1) {
                  indexPergunta++;
                  _proximaPergunta(
                      p.perguntas[indexPergunta]['resposta'][0]['r1']);
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Resultado(
                        resultado: p.pontuacao.toString(),
                      ),
                    ),
                  );
                }
              },
              child: Text(p.perguntas[indexPergunta]['resposta'][0]['r1']),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (p.perguntas[indexPergunta]['resposta'][0]['r2'] ==
                    p.perguntas[indexPergunta]['certa']) {
                  p.pontuacao++;
                }
                if (indexPergunta < p.perguntas.length - 1) {
                  indexPergunta++;
                  _proximaPergunta(
                      p.perguntas[indexPergunta]['resposta'][0]['r2']);
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Resultado(
                        resultado: p.pontuacao.toString(),
                      ),
                    ),
                  );
                }
              },
              child: Text(p.perguntas[indexPergunta]['resposta'][0]['r2']),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (p.perguntas[indexPergunta]['resposta'][0]['r3'] ==
                    p.perguntas[indexPergunta]['certa']) {
                  p.pontuacao++;
                }
                if (indexPergunta < p.perguntas.length - 1) {
                  indexPergunta++;
                  _proximaPergunta(
                      p.perguntas[indexPergunta]['resposta'][0]['r3']);
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Resultado(resultado: p.pontuacao.toString()),
                    ),
                  );
                }
              },
              child: Text(p.perguntas[indexPergunta]['resposta'][0]['r3']),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Pontuação atual:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              '${p.pontuacao}',
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.lightGreen),
            ),
          ],
        ),
      ),
    );
  }
}
