import 'package:flutter/material.dart';

class Bloquei extends StatelessWidget {
  final MainAxisAlignment alignment;

  const Bloquei(this.alignment);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 390,
      width: 340,
      margin: EdgeInsets.only(top: 30, left: 40, right: 40),
      decoration: BoxDecoration(
          border: Border.all(
              color: Color.fromARGB(221, 80, 79, 79),
              width: 5,
              style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(20)),
      //child: AnimatedContainer(

      //),
    );
  }
}
