import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'GYMMASTER',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Text(
                    'Registrarse',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Ingresa tu correo',
                      filled: true,
                      fillColor: Colors.grey[700],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Ingresa tu contraseña',
                      filled: true,
                      fillColor: Colors.grey[700],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Acción de registro
                    },
                    child: Text('Registrarse'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Vuelve a la pantalla de login
              },
              child: Text('Iniciar sesión'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

