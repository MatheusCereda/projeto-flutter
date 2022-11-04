import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // O método build, que está sendo sobrescrito, é responsável por
  // construir o widget sem estado.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Este é o tema da aplicação

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Este widget é a página inicial do aplicativo. É stateful, ou seja,
  // que possui um objeto State que contém campos que afetam como fica.

  // Esta class é a configuração para o estado.

  // Este é um campo de uma subclasse Widget, 
  // por isso marcado como "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // SetState é responsável por disparar uma alteração no estado
      // do widget.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Feito para ser executado toda
    // vez que o SetState é chamado.
    return Scaffold(
      appBar: AppBar(
        // Define o titulo da barra do aplicativo.
        title: Text(widget.title),
      ),
      body: Center(
        // Widget de layout. Ele funciona pegando uma
        // criança e posicionando no meio do pai.
        child: Column(
          // Também é um widget de layout.
         
          // Column possui várias propriedades para controlar
          // como é dimensionada e como posiciona os filhos.
          // Aqui o MainAxisAlignment serve para posicionar
          // verticalmente.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Voce apertou o botao muitas vezes: ',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
