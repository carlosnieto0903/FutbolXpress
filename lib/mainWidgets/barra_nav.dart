import 'package:flutter/material.dart';

class Barra extends StatelessWidget {
  const Barra({super.key});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      fixedColor: Colors.deepPurple,
      items: const [
        BottomNavigationBarItem(label: "Inicio", icon: Icon(Icons.home)),
        BottomNavigationBarItem(
            label: "Modificar Partidos",
            icon: Icon(Icons.drive_file_rename_outline_rounded)),
        BottomNavigationBarItem(
            label: "Visualizar Tabla", icon: Icon(Icons.visibility)),
      ],
    );
  }
}
