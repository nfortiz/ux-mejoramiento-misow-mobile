// create stateless wiget for login page
import 'package:flutter/material.dart';
import 'package:parentcheck/components/google_button.dart';
import 'package:parentcheck/components/parentcheck_button.dart';
import 'package:parentcheck/components/parentcheck_app_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ParentCheckAppBar(centerTitle: true),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 48, horizontal: 24),
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 48),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Bienvenido, inicia sesión',
                style: TextStyle(color: Color(0xff001F28), fontSize: 24),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GoogleButton(
                text: 'Iniciar sesión con Google',
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 42),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(child: Divider()),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "ó",
                        style: TextStyle(
                          color: Color(0xff171C1F),
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 48),
                child: Column(
                  spacing: 24,
                  children: [
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Escribe tu email: example@email.com',
                        border: OutlineInputBorder(),
                        labelText: 'Correo',
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Contraseña',
                      ),
                    ),
                  ],
                ),
              ),
              ParentCheckButton(
                text: 'Iniciar sesion',
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
