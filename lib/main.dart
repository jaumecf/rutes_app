import 'package:flutter/material.dart';

void main() {
  runApp(const RutesApp());
}

class RutesApp extends StatelessWidget {
  const RutesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: PrimeraPantalla(),
    );
  }
}

class PrimeraPantalla extends StatelessWidget {
  const PrimeraPantalla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primera pantalla'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Primera pantalla'),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => SegonaPantalla(),
            ));
          },
        ),
      ),
    );
  }
}

class SegonaPantalla extends StatelessWidget {
  const SegonaPantalla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segona pantalla'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Segona pantalla'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
