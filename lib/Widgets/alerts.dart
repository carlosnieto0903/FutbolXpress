import 'package:flutter/material.dart';

class Alerts extends StatelessWidget {
  const Alerts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Alerts',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.deepPurple,
        toolbarHeight: 80,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Mostrar'),
          onPressed: () => _mostrarAlerta(context),
          style: const ButtonStyle(
              foregroundColor: MaterialStatePropertyAll(Colors.white),
              backgroundColor:
                  MaterialStatePropertyAll(Colors.deepPurpleAccent)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 10,
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlerta(BuildContext contx) {
    showDialog(
        context: contx,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Text('Titulo'),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [Text('Contenido de la caja'), FlutterLogo(size: 100)],
            ),
            actions: [
              ElevatedButton(
                child: Text('Cancelar'),
                onPressed: () => Navigator.of(contx).pop(),
              ),
              ElevatedButton(
                child: Text('Ok'),
                onPressed: () {
                  Navigator.of(contx).pop();
                },
              ),
            ],
          );
        });
  }
}
