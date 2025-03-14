import 'package:app_asistencias/pages/alertas.dart';
import 'package:app_asistencias/pages/clases.dart';
import 'package:app_asistencias/pages/login.dart';
import 'package:app_asistencias/pages/fecha.dart';
import 'package:app_asistencias/widgets/navbar_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:app_asistencias/pages/profesores.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => NavbarProvider(),
          )
        ],
      child: MaterialApp(
      // Indicarle la pagina de inicio
      initialRoute: '/login', // Página que se inicia al abrir la app
      routes: {
        '/login': (context) => const Login_Page(),
        '/clases': (context) => const Clases_Page(),
        '/profesores': (context) => const Profesores_Page(),
        '/alertas': (context) => const Alertas_Page(),
      },
    )
    );
  }
}





