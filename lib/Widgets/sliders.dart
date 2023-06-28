import 'package:flutter/material.dart';

class Sliders extends StatefulWidget {
  const Sliders({super.key});

  @override
  State<Sliders> createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  double _valorSlider = 100;
  bool? _bloquearcheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Slider',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.deepPurple,
        toolbarHeight: 80,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            _crearSlide(),
            _crearCheckbox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlide() {
    return Slider(
      activeColor: Colors.greenAccent,
      label: 'Tamaño de la imagen',
      //divisions: 20,
      value: _valorSlider,
      min: 10,
      max: 400,
      onChanged: (_bloquearcheck ?? false)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://upload.wikimedia.org/wikipedia/en/thumb/7/7a/Manchester_United_FC_crest.svg/1200px-Manchester_United_FC_crest.svg.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckbox() {
    return CheckboxListTile(
        title: const Text('Bloquear Slider'),
        value: _bloquearcheck ?? false,
        onChanged: (element) {
          setState(() {
            _bloquearcheck = element;
          });
        });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: const Text('Bloquear Slider'),
        value: _bloquearcheck ?? false,
        onChanged: (element) {
          setState(() {
            _bloquearcheck = element;
          });
        });
  }
}
