import 'package:flutter/material.dart';
import '../components/tesk.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Fluter: Tarefa'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(microseconds: (100)),
        child: ListView(
          children: const [
            Task('Meditação Matinal', 'assets/image/_102859959_dormir.jpg', 5),
            Task('Café da Manhã',
                'assets/image/como-trabalhar-pela-internet.png', 4)
            // Task(
            //     'Trabalhar',
            //     'https://respostas.sebrae.com.br/wp-content/uploads/2020/06/como-trabalhar-pela-internet.png',
            //     3),
            // Task(
            //     'Estudar',
            //     'https://www.estudaqui.com/wp-content/uploads/2020/05/como-estudar-enem-sozinho.png',
            //     2),
            // Task(
            //     'Malhar',
            //     'https://blog.lionfitness.com.br/wp-content/uploads/2018/10/muscula%C3%A7%C3%A3o-benef%C3%ADcios.jpg',
            //     1),
            // Task(
            //     'Dormir',
            //     'http://c.files.bbci.co.uk/176FB/production/_102859959_dormir.jpg',
            //     3),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
