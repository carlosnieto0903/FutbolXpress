import 'dart:async';

import 'package:flutter/material.dart';

class Listviews extends StatefulWidget {
  const Listviews({super.key});

  @override
  State<Listviews> createState() => _ListviewsState();
}

class _ListviewsState extends State<Listviews> {
  final List<int> _listanum = [];
  ScrollController _scroll = ScrollController();
  int _ultimoitem = 0;
  bool _isloading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _agregarImgs();

    _scroll.addListener(() {
      if (_scroll.position.pixels == _scroll.position.maxScrollExtent) {
        //_agregarImgs();
        fetchdata();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scroll.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Imagenes',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.deepPurple,
        toolbarHeight: 80,
      ),
      body: Stack(
        children: [
          _crearLista(),
          _crearLoading(),
        ],
      ),
    );
  }

  Widget _crearLista() {
    return RefreshIndicator(
      onRefresh: obtenerpage,
      child: ListView.builder(
          controller: _scroll,
          itemCount: _listanum.length,
          itemBuilder: (BuildContext contxt, int num) {
            final img = _listanum[num];
            return FadeInImage(
              image: NetworkImage('https://picsum.photos/500/300/?image=$img'),
              placeholder: AssetImage('assets/jar-loading.gif'),
            );
          }),
    );
  }

  Future<Null> obtenerpage() async {
    final duracion = Duration(seconds: 2);
    Timer(duracion, () {
      _listanum.clear();
      _ultimoitem++;
      _agregarImgs();
    });
    return Future.delayed(duracion);
  }

  void _agregarImgs() {
    for (int i = 0; i < 10; i++) {
      _ultimoitem++;
      _listanum.add(_ultimoitem);
    }
    setState(() {});
  }

  Future<Null> fetchdata() async {
    _isloading = true;
    setState(() {
      final duracion = Duration(seconds: 2);
      Timer(duracion, respuestaHTTP);
    });
    return null;
  }

  void respuestaHTTP() {
    _isloading = false;
    _scroll.animateTo(_scroll.position.pixels + 100,
        curve: Curves.fastOutSlowIn, duration: Duration(milliseconds: 250));
    _agregarImgs();
  }

  Widget _crearLoading() {
    if (_isloading) {
      return const Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(
            height: 20,
          )
        ],
      );
    } else {
      return Container();
    }
  }
}
