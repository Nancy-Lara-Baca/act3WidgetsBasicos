import 'package:flutter/material.dart';

//! AnimatedPhysicalModel

class PantallaCinco extends StatefulWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  PantallaCincoState createState() => PantallaCincoState();
}

class PantallaCincoState extends State<PantallaCinco> {
  bool _isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Cinco'),
        backgroundColor: const Color(0xff9e85a8),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedPhysicalModel(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              elevation: _isFlat ? 0 : 6.0,
              shape: BoxShape.rectangle,
              shadowColor: Colors.black,
              color: Colors.white,
              child: const SizedBox(
                height: 120.0,
                width: 120.0,
                child: Icon(Icons.android_outlined),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('Click'),
              onPressed: () {
                setState(() {
                  _isFlat = !_isFlat;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
