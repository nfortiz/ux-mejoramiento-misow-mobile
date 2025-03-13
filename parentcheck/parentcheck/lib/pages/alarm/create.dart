import 'package:flutter/material.dart';
import 'package:parentcheck/components/parentcheck_button.dart';
import 'package:parentcheck/components/parentcheck_dropdown.dart';
import 'package:parentcheck/components/parentcheck_app_bar.dart';

class CreateAlarmPage extends StatefulWidget {
  const CreateAlarmPage({super.key});

  @override
  State<CreateAlarmPage> createState() => _CreateAlarmPageState();
}

class _CreateAlarmPageState extends State<CreateAlarmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ParentCheckAppBar(avatar: true, back: true),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 24),
            child: const Text('Agregar Alarma', style: TextStyle(fontSize: 24)),
          ),
          Column(
            spacing: 32,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  const Text(
                    'Seleccionar dependiente',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ParentCheckDropdown(
                          placeholder: Text("Seleccionar dependiente"),
                          children: [
                            MenuItemButton(child: Text("John doe")),
                            MenuItemButton(child: Text("Jason Bourne")),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  const Text(
                    'Introducir medicamento',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Ibuprofeno",
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Introducir cantidad',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "500mg",
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 24,
                children: [
                  const Text(
                    'Introducir frecuencia',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    spacing: 16,
                    children: [
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Tomar cada",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: ParentCheckDropdown(
                          placeholder: Text("Horas"),
                          children: [
                            MenuItemButton(child: Text("Minutos")),
                            MenuItemButton(child: Text("Horas")),
                            MenuItemButton(child: Text("Días")),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 16,
                    children: [
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Durante",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: ParentCheckDropdown(
                          placeholder: Text("Días"),
                          children: [
                            MenuItemButton(child: Text("Minutos")),
                            MenuItemButton(child: Text("Horas")),
                            MenuItemButton(child: Text("Días")),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 16,
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Fecha de inicio",
                          ),
                        ),
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
          text: 'Crear alarma',
          icon: Icons.add,
          color: Theme.of(context).primaryColorDark,
          onPressed: () {
            Navigator.pushNamed(context, '/alarm/summary');
          },
        ),
      ],
    );
  }
}
