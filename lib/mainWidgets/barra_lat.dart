import 'package:flutter/material.dart';

class LatBar extends StatelessWidget {
  const LatBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: Text(
              "Componentes",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Busqueda",
              style: TextStyle(color: Colors.deepPurple, fontSize: 25),
            ),
            leading: Icon(Icons.search),
          ),
          ListTile(
            title: Text(
              "Modificar Partidos",
              style: TextStyle(color: Colors.deepPurple, fontSize: 25),
            ),
            leading: Icon(Icons.mode_outlined),
          )
        ],
      ),
    );
  }
}
