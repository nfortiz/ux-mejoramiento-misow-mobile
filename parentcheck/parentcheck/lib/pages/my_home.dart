
import 'package:flutter/material.dart';
import 'package:parentcheck/components/card_historial_home.dart';
import 'package:parentcheck/components/card_home.dart';
import 'package:parentcheck/components/card_next_dosis.dart';
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

  final List<Widget> _screens = [
    AlarmContent(),
    HomeContent(),
    HistorialContent(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isHome: true),
      body: Container(
        child: _screens[_currentIndex],
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

class AlarmContent extends StatelessWidget {


  const AlarmContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 71,
          margin: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Alarmas',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        Container(
          height: 148,
          width: 344,
          margin: EdgeInsets.symmetric(horizontal: 50),
          child: CardAlarm(title: 'Loratadina 100mg', subtitle: '1 dosis cada 6 horas'),
        )
        
      ],
    );
  }
}


class CardAlarm extends StatelessWidget {

  final String title;
  final String subtitle;

  const CardAlarm({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 1),
          ListTile(
            title: Text('Loratadina, 10 mg', style: TextStyle(fontSize: 16, color: Color(0xff171C1F), fontWeight: FontWeight.w500),),
            subtitle: Text('1 dosis cada 6 horas', style: TextStyle(fontSize: 14, color: Color(0xff40484C)),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Color(0xff70787C),
                    ),
                    borderRadius: BorderRadius.circular(100), // <-- Radius
                  ),
                  backgroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Text('Editar', style: TextStyle(color: Theme.of(context).primaryColorDark)),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100), // <-- Radius
                ),
                backgroundColor: Theme.of(context).primaryColorDark,
                  ),
                onPressed: () {},
                child:
                  const Text('Ver', style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(width: 15),
            ],              
          ),
          const SizedBox(height: 10),
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
        CardNextDosis(),
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

