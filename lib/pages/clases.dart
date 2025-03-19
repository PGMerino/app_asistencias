import 'package:app_asistencias/widgets/barra_nav.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:app_asistencias/providers/fecha_provider.dart';


class Clases_Page extends StatelessWidget {
  const Clases_Page({super.key});

  @override
  Widget build(BuildContext context) {
    // Accedemos al provider pero no lo podemos modificar
    final fechaSeleccionada = Provider.of<FechaProvider>(context, listen: false).fecha;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Centra el contenido
            children: [
              Center(
                // Logo
                child: Image.asset(
                  'images/icono_app.png',
                  width: 80,
                ),
              ),

              Text("Día seleccionado: ${DateFormat('dd-MM-yyyy').format(fechaSeleccionada)}"),
            ]
        ),
      )
    );
  }
}

