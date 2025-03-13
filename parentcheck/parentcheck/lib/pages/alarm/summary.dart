import 'package:flutter/material.dart';
import 'package:parentcheck/components/parentcheck_button.dart';
import 'package:parentcheck/components/parentcheck_app_bar.dart';

class AlarmSummaryPage extends StatefulWidget {
  const AlarmSummaryPage({super.key});

  @override
  State<AlarmSummaryPage> createState() => _AlarmSummaryPageState();
}

class _AlarmSummaryPageState extends State<AlarmSummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ParentCheckAppBar(avatar: true, back: true),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          Column(
            children: <Widget>[
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 42),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Alarma creada',
                          style: TextStyle(fontSize: 24),
                        ),
                        Icon(Icons.check),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 48),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Loratadina 500mg',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Column(
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
                            children: [
                              Column(
                                spacing: 24,
                                children: [
                                  Column(
                                    spacing: 4,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      persistentFooterButtons: [
        ParentCheckButton(
          text: 'Compartir alarma',
          icon: Icons.share,
          color: Theme.of(context).primaryColorDark,
          onPressed: () {},
        ),
      ],
    );
  }
}
