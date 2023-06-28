import 'package:flutter/material.dart';

class BotonesHome extends StatelessWidget {
  const BotonesHome({super.key});
  final conteo = 0;
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
            child: Icon(Icons.handshake_rounded,
                color: Color.fromARGB(255, 248, 248, 250)),
            backgroundColor: Colors.deepPurpleAccent,
            elevation: 10,
            onPressed: null),
        SizedBox(
          width: 10,
        ),
        FloatingActionButton(
            child: Icon(Icons.link, color: Color.fromARGB(255, 248, 248, 250)),
            backgroundColor: Colors.deepPurpleAccent,
            elevation: 10,
            onPressed: null),
        SizedBox(
          width: 10,
        ),
        FloatingActionButton(
            child:
                Icon(Icons.people, color: Color.fromARGB(255, 248, 248, 250)),
            backgroundColor: Colors.deepPurpleAccent,
            elevation: 10,
            onPressed: null),
      ],
    );
  }
}
