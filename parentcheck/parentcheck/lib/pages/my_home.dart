
import 'package:flutter/material.dart';
import 'package:parentcheck/components/card_home.dart';
import 'package:parentcheck/components/historial_preview.dart';
import 'package:parentcheck/components/my_app_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isHome: true),
      body: Container(
        child: HistorialContent(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Alarmas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Historial',
          ),
        ],
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        HistorialPreview(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 70),
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Proxima dosis',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        CardExample(),
        const SizedBox(height: 10),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 70),
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Inicio',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        CardHome(title: 'Dependientes', subtitle: 'Ver dependientes', imagePath: 'card_home_bg.png'),
        const SizedBox(height: 5),
        CardHome(title: 'Medicamentos', subtitle: 'Ver medicamentos', imagePath: 'medical_care.png',),
      ],
    );
  }
}
class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 70),
      width: 344,
      child: Card(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              title: Text(
                'Loratadina 100mg',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff171C1F)
                ),
              ),
              subtitle: Text(
                '1 dosis cada 6 horas',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff40484C)
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[              
                TextButton.icon(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(
                      color: Color(0xff444748)
                    ),
                  ),
                  icon: const Icon(Icons.notifications_outlined, color: Color(0xff444748)),
                  label: const Text('02:00 PM', style: TextStyle(color: Color(0xff444748)),),
                  onPressed: () {
                  },
                )               
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class HistorialContent extends StatelessWidget {

  const HistorialContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        HistorialPreview(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 70),
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Febrero 15',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 70),
          padding: EdgeInsets.symmetric(vertical: 10),
          child: CardHistorial(
            title: 'Loratadina 100mg',
            subtitle: '1 dosis cada 6 horas',
            time: '02:00 PM',
            imagePath: 'card_home_bg.png',
          ),
        ),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 70),
          child: CardHistorial(
            title: 'Loratadina 100mg',
            subtitle: '1 dosis cada 6 horas',
            time: '02:00 PM',
            imagePath: 'card_home_bg.png',
          ),
        ),
        
      ],
    );
  }
}


class CardHistorial extends StatelessWidget {

  final String title;
  final String subtitle;
  final String time;
  final String imagePath;

  const CardHistorial({super.key, required this.title, required this.subtitle, required this.time, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.supervised_user_circle_outlined),
            title: Text('Camilo', style: TextStyle(fontSize: 16, color: Color(0xff171C1F), fontWeight: FontWeight.bold),),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            title: Text('Loratadina, 10 mg', style: TextStyle(fontSize: 16, color: Color(0xff171C1F), fontWeight: FontWeight.bold),),
            subtitle: Text('1 dosis cada 6 horas'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  TextButton.icon(
                    style: TextButton.styleFrom(
                      textStyle: TextStyle(
                        color: Color(0xff444748)
                      ),
                    ),
                    icon: Icon(Icons.notifications_outlined, color: Theme.of(context).primaryColorDark),
                    label: Text(
                      '02:00 PM', 
                      style: TextStyle(
                        color: Theme.of(context).primaryColorDark, 
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    onPressed: () {
                    },
                  ) 
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100), // <-- Radius
                    ),
                    backgroundColor: Theme.of(context).primaryColorDark,
                     ),
                    onPressed: () {}, 
                    child: Text("Registrar", style: TextStyle(color: Colors.white),)
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}