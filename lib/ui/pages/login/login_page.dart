import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login_viewmodel.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key})

  @override
  Widget build(BuildContext context) {
    final loginViewModel = Provider.of<LoginViewModel>(context);

    body: Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          // LOGO
          Expanded(
            flex: 3,
            child: Image.asset(
              'images/icono_app.png',
            ),
          ),


          // SECCIÓN EMAIL
          Text(
            'Usuario',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF003E00),
              fontSize: 20,
            ),
          ),

          TextField(
            onChanged: (value) => loginViewModel.setEmail(value),
            decoration: InputDecoration(
                border: OutlineInputBorder()
            ),
          ),


          // SECCIÓN CONTRASEÑA
          Text(
            'Contraseña',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF003E00),
              fontSize: 20,
            ),
          ),

          TextField(
            onChanged: (value) => loginViewModel.setPassword(value),
            decoration: InputDecoration(
                border: OutlineInputBorder()
            ),
            obscureText: true,
          ),


          // BOTÓN DE LOGIN
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color(0xFF003E00), // Color hexadecimal
                fixedSize: Size.fromHeight(70)
            ),
            onPressed: () async {
              bool success = await loginViewModel.login();
              if (success) {
                Navigator.pushReplacementNamed(context, '/home');
              } else {
                print('Failed login');
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Error al iniciar sesión"),
                ));
                // Mostrar mensaje de error
              }
            },
            child: Text(
              'Iniciar Sesión',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}