import 'package:flutter/material.dart';
import 'package:parentcheck/components/button_with_icon.dart';

class AlarmSummaryPage extends StatefulWidget {
  const AlarmSummaryPage({super.key});

  @override
  State<AlarmSummaryPage> createState() => _AlarmSummaryPageState();
}

class _AlarmSummaryPageState extends State<AlarmSummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Alarma'),
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Alarma creada', style: TextStyle(fontSize: 24)),
                Icon(Icons.check),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24),
            child: Text(
              'Loratadina 500mg',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              spacing: 24,
              children: [
                Column(
                  spacing: 24,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Administrar a dependiente',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text('John Doe', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    Divider(),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 24,
                  children: [
                    const Text(
                      'Instrucciones de administración',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Administrar 1 dosis cada 6 horas durante 5 días.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Divider(),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 24,
                  children: [
                    const Text(
                      'Duración del medicamento',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      spacing: 24,
                      children: [
                        Column(
                          spacing: 4,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fecha de inicio',
                              style: TextStyle(fontSize: 12),
                            ),
                            Chip(
                              avatar: Icon(Icons.play_arrow),
                              label: Text('22/02/2025 9:00 AM'),
                            ),
                          ],
                        ),
                        Column(
                          spacing: 4,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Fecha de finalización',
                              style: TextStyle(fontSize: 12),
                            ),
                            Chip(
                              avatar: Icon(Icons.pause),
                              label: Text('25/02/2025 9:00 AM'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(24, 62, 24, 0),
                  child: ButtonWithIcon(
                    text: 'Compartir alarma',
                    icon: Icons.share,
                    color: Theme.of(context).primaryColorDark,
                    onPressed: () {
                      Navigator.pushNamed(context, '/alarm-created');
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
