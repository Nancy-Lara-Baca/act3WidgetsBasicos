import 'package:flutter/material.dart';
import 'package:Lara1225/pagina_uno.dart';
import 'package:Lara1225/pagina_dos.dart';
import 'package:Lara1225/pagina_tres.dart';
import 'package:Lara1225/pagina_cuatro.dart';
import 'package:Lara1225/pagina_cinco.dart';
import 'package:Lara1225/pagina_seis.dart';

void main() => runApp(MisRutasApp());

class MisRutasApp extends StatelessWidget {
  const MisRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entre Paginas Routes',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/Pantalla2': (context) => const PantallaDos(),
        '/Pantalla3': (context) => const PantallaTres(),
        '/Pantalla4': (context) => const PantallaCuatro(),
        '/Pantalla5': (context) => const PantallaCinco(),
        '/Pantalla6': (context) => const PantallaSeis(),
      },
    );
  }
}
