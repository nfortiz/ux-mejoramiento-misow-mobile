import 'package:flutter/material.dart';
import 'package:parentcheck/components/parentcheck_button.dart';
import 'package:parentcheck/components/card_alarm.dart';
import 'package:parentcheck/components/card_historial_home.dart';
import 'package:parentcheck/components/card_home.dart';
import 'package:parentcheck/components/card_next_dosis.dart';
import 'package:parentcheck/components/historial_preview.dart';
import 'package:parentcheck/components/parentcheck_app_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 1;

  final List<Widget> _screens = [
    AlarmContent(),
    HomeContent(onPressed: () {}),
    HistorialContent(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ParentCheckAppBar(avatar: true),
      body: Container(child: _screens[_currentIndex]),
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
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
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
      padding: EdgeInsets.all(24),
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 24),
          child: const Text('Alarmas', style: TextStyle(fontSize: 24)),
        ),
        Column(
          children: <Widget>[
            CardAlarm(
              title: 'Loratadina 100mg',
              subtitle: '1 dosis cada 6 horas',
            ),
            const SizedBox(height: 10),
            CardAlarm(
              title: 'Acetaminofen 500mg',
              subtitle: '1 dosis cada 8 horas',
            ),
            const SizedBox(height: 100),
            ParentCheckButton(
              text: 'Crear alarma',
              icon: Icons.add,
              color: Theme.of(context).primaryColorDark,
              onPressed: () {
                Navigator.pushNamed(context, '/alarm/create');
              },
            ),
            const SizedBox(height: 10),
            ParentCheckButton(
              text: 'Escanear prescripción',
              icon: Icons.document_scanner_outlined,
              color: Theme.of(context).primaryColorDark,
              onPressed: () {
                Navigator.pushNamed(context, '/prescription/scan');
              },
            ),
          ],
        ),
      ],
    );
  }
}

class HomeContent extends StatelessWidget {
  final GestureTapCallback onPressed;

  const HomeContent({super.key, this.onPressed = defaultOnPressed});

  static void defaultOnPressed() {
    // Default action when no onPressed is provided
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      children: <Widget>[
        HistorialPreview(onPressed: onPressed),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Proxima dosis',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        CardNextDosis(),
        const SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Inicio',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        CardHome(
          title: 'Dependientes',
          subtitle: 'Ver dependientes',
          imagePath: 'assets/card_home_bg.png',
        ),
        const SizedBox(height: 5),
        CardHome(
          title: 'Medicamentos',
          subtitle: 'Ver medicamentos',
          imagePath: 'assets/medical_care.png',
        ),
      ],
    );
  }
}

class HistorialContent extends StatelessWidget {
  const HistorialContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      children: <Widget>[
        HistorialPreview(),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Febrero 15',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Column(
          spacing: 10,
          children: [
            CardHistorial(
              title: 'Loratadina 100mg',
              subtitle: '1 dosis cada 6 horas',
              time: '02:00 PM',
              imagePath: 'card_home_bg.png',
            ),
            CardHistorial(
              title: 'Loratadina 100mg',
              subtitle: '1 dosis cada 6 horas',
              time: '02:00 PM',
              imagePath: 'card_home_bg.png',
            ),
          ],
        ),
      ],
    );
  }
}
