import 'package:flutter/material.dart';
import 'package:quizz/home.dart';

class Resultado extends StatelessWidget {
  const Resultado({Key? key, required this.resultado}) : super(key: key);

  final String resultado;

  @override
  Widget build(BuildContext context) {
    String emoji = '';
    String textoResultado = '';
    if (resultado == '0') {
      emoji = 'images/meio_triste.png';
      textoResultado = 'Que pena!\nVamos tentar novamente!';
    } else if (resultado == '1') {
      emoji = 'images/meio_feliz.png';
      textoResultado = 'Que legal!\nPodemos melhorar!';
    } else if (resultado == '2') {
      emoji = 'images/feliz.png';
      textoResultado = 'Increível!\nMas pode ser melhor ainda!';
    } else {
      emoji = 'images/super_feliz.png';
      textoResultado = 'Você é D+!\nEstá sabendo de tudo!!!';
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Pontuação final:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              resultado,
              style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreen),
            ),
            Image.asset(
              emoji,
              width: 200,
              height: 200,
            ),
            Text(
              textoResultado,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.blue,
                
              ),
              child: const Text('Tentar novamente',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
            ),
          ],
        ),
      ),
    );
  }
}
