import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cards',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.deepPurple,
        toolbarHeight: 80,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
          SizedBox(height: 30),
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
          SizedBox(height: 30),
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(children: [
        const ListTile(
          leading: Icon(
            Icons.photo_album,
            color: Colors.deepPurple,
          ),
          title: Text('Titulo 1 Tarjeta'),
          subtitle: Text('Descripción de la tarjeta 1'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () {},
            ),
            TextButton(
              child: const Text('Ok'),
              onPressed: () {},
            ),
          ],
        ),
      ]),
    );
  }

  Widget _cardTipo2() {
    final card1 = Container(
      child: Column(children: [
        const FadeInImage(
          image: NetworkImage(
              'https://free4kwallpapers.com/uploads/originals/2015/10/17/switzerland-landscape.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 250,
          fit: BoxFit.cover,
        ),
        /*const Image(          
          image: NetworkImage(
              ''),
        ),*/
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text('Landscape Switzerland'),
        )
      ]),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: Colors.white,
              blurRadius: 10,
              spreadRadius: 2.0,
              offset: Offset(2, 10)),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: card1,
      ),
    );
  }
}
