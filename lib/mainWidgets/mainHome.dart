import 'package:app1/mainWidgets/barra_lat.dart';
import 'package:app1/mainWidgets/barra_nav.dart';
import 'package:app1/mainWidgets/botonesHome.dart';
import 'package:app1/providers/menu_provider.dart';
import 'package:app1/utils/icono_string.dart';
import 'package:flutter/material.dart';

class MainHome extends StatelessWidget {
  const MainHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Futbol xPress",
          style: TextStyle(color: Colors.white, fontSize: 33),
        ),
        backgroundColor: Colors.deepPurple,
        toolbarHeight: 80,
      ),
      body: _lista(),
      drawer: const LatBar(),
      bottomNavigationBar: const Barra(),
      floatingActionButton: const BotonesHome(),
    );
  }

  Widget _lista() {
    //menuProvider.cargarData()

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext contxt) {
    final List<Widget> opc = [];
    data.forEach((element) {
      final WidgetTemp = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: const Icon(
          Icons.keyboard_arrow_right,
          color: Colors.deepPurpleAccent,
        ),
        onTap: () {
          Navigator.pushNamed(contxt, element['ruta']);
        },
      );
      opc
        ..add(WidgetTemp)
        ..add(Divider());
    });
    return opc;
  }
}
