import 'package:flutter/material.dart';

//!AnimatedContainer

class PantallaTres extends StatefulWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  State<PantallaTres> createState() => _PantallaTresState();
}

class _PantallaTresState extends State<PantallaTres> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Tres'),
        backgroundColor: const Color(0xff9e85a8),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            width: selected ? 200.0 : 100.0,
            height: selected ? 100.0 : 200.0,
            color: selected ? Colors.blueGrey : Colors.white,
            alignment:
                selected ? Alignment.center : AlignmentDirectional.topCenter,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 75),
          ),
        ),
      ),
    );
  }
}
