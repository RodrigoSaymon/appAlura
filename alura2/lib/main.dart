import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Container(
          color: Colors.cyan,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(alignment: AlignmentDirectional.center, children: [
                Container(color: Colors.white, width: 100, height: 100),
                Container(color: Colors.blue, width: 50, height: 50),
              ]),
              Stack(alignment: AlignmentDirectional.center, children: [
                Container(color: Colors.white, width: 100, height: 100),
                Container(color: Colors.blue, width: 50, height: 50),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.amber,
                    height: 50,
                    width: 50,
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                  ),
                  Container(
                    color: Colors.pink,
                    height: 50,
                    width: 50,
                  )
                ],
              ),
              Container(
                color: Colors.amber,
                width: 300,
                height: 30,
                child: const Text(
                  textAlign: TextAlign.center,
                  'Diamante Amrelo',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print('Aprtou o Botão');
                  },
                  child: Text('Aperte o Botão'))
            ],
          ),
        ));
  }
}
