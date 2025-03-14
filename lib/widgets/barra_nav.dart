import 'package:app_asistencias/pages/alertas.dart';
import 'package:app_asistencias/pages/clases.dart';
import 'package:app_asistencias/pages/fecha.dart';
import 'package:app_asistencias/pages/login.dart';
import 'package:app_asistencias/pages/profesores.dart';
import 'package:flutter/material.dart';

class BarraNav extends StatefulWidget {
  const BarraNav({super.key});

  @override
  State<BarraNav> createState() => _BarraNavState();
}

class _BarraNavState extends State<BarraNav> {
  int _currentIndex = 0;

  final List<Widget> paginas = [
    Clases_Page(),
    Fecha_popUp(),
    Alertas_Page(),
    Profesores_Page()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: paginas[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },

          // Barra inferior de navegación
          items: [
            // Lista de botones y sus nombres de navegacion
            // BOTÓN INICIO
            BottomNavigationBarItem(
              label: 'Inicio',
              icon: Icon(Icons.home),
            ),

            // BOTÓN FECHA
            BottomNavigationBarItem(
              label: 'Fecha',
              icon: Icon(Icons.calendar_month_outlined),
            ),

            // BOTÓN NOTIFICACIONES
            BottomNavigationBarItem(
              label: 'Alertas',
              icon: Icon(Icons.notifications_none),
            ),

            // BOTÓN PROFESORES
            BottomNavigationBarItem(
              label: 'Profesores',
              icon: Icon(Icons.person),
            )
          ],

          // Depende el boton en el que estemos = diferente color
          // Boton seleccionado = verde
          // Sino = negro
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
        )
    );
  }
}


