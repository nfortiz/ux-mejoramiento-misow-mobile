
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
        child: HomeContent(),
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