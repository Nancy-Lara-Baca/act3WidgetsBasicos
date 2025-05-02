import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla Uno',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        backgroundColor: const Color(0xff9e85a8),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.start, // Cambiado a MainAxisAlignment.start
        children: [
          const SizedBox(height: 20), // Reducido el espacio superior
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Pantalla2');
              },
              child: const Text('Ver Pantalla 2'),
            ),
          ),
          const SizedBox(height: 15),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Pantalla3');
              },
              child: const Text('Ver Pantala 3'),
            ),
          ),
          const SizedBox(height: 15),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Pantalla4');
              },
              child: const Text('Ver Pantalla 4'),
            ),
          ),
          const SizedBox(height: 15),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Pantalla5');
              },
              child: const Text('Ver Pantalla 5'),
            ),
          ),
          const SizedBox(height: 15),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Pantalla6');
              },
              child: const Text('Ver Pantalla 6'),
            ),
          ),
        ],
      ),
    );
  }
}
