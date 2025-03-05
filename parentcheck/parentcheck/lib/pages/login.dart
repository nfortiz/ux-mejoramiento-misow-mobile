// create stateless wiget for login page
import 'package:flutter/material.dart';
import 'package:parentcheck/components/my_app_bar.dart';
import 'package:parentcheck/main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(centerTitle: true, isHome: true),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 50),
            Container(
              child: Text('Bienvenido, inicia sesión', style: TextStyle(color: Color(0xff001F28), fontSize: 24),),
            ),
            const SizedBox(height: 50),
            Container(
              height: 40,
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Color(0xffE3E2E3),
                  side: BorderSide(
                    color: Color(0xffE3E2E3),
                  ),
                ),
                onPressed: () {},
                child: Text("Iniciar sesión con Google", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 20,
              width: double.infinity,
              child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                  Expanded(
                    child: Divider()
                  ),       
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("ó", style: TextStyle(color: Color(0xff171C1F), fontSize: 14),),
                  ),                          
                  Expanded(
                    child: Divider()
                  ),
                ]
              ),
            ),
            const SizedBox(height: 10),

            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Escribe tu email: example@email.com',
                border: OutlineInputBorder(),
                labelText: 'Correo',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Contraseña',
              ),
            ),
            const SizedBox(height: 40),
            Container(
              height: 56,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16), // <-- Radius
                  ),
                  backgroundColor: Theme.of(context).primaryColorDark,
                ),
                child: Text('Iniciar Sesión', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500)),              
              ),
            ),            
          ],
        ),
      ),
    );
  }
}