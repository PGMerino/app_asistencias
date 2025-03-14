import 'package:app_asistencias/widgets/barra_nav.dart';
import 'package:flutter/material.dart';

class Fecha_popUp extends StatelessWidget {
  const Fecha_popUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
            child: Text('boton funciona pls'),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 400,
                      child: Center(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Cerrar')),
                      ),
                    );
                  });
            }));
  }
}
