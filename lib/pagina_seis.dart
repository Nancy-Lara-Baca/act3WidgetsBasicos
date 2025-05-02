//! AnimatedSwitcher

import 'package:flutter/material.dart';

class PantallaSeis extends StatefulWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  State<PantallaSeis> createState() => _PantallaSeisState();
}

class _PantallaSeisState extends State<PantallaSeis> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Seis'),
        backgroundColor: const Color(0xff9e85a8),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Text(
                '$_count',
                style: const TextStyle(fontSize: 40),
                key: ValueKey(_count),
              ),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
            ),
            ElevatedButton(
              child: const Text('Add'),
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
