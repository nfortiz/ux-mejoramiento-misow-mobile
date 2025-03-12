import 'package:flutter/material.dart';
import 'package:parentcheck/components/button_with_icon.dart';
import 'package:parentcheck/components/dropdown_button_custom.dart';

class AddAlarmPage extends StatefulWidget {
  const AddAlarmPage({super.key});

  @override
  State<AddAlarmPage> createState() => _AddAlarmPageState();
}

class _AddAlarmPageState extends State<AddAlarmPage> {
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
            child: const Text('Agregar Alarma', style: TextStyle(fontSize: 24)),
          ),
          Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              spacing: 32,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    const Text(
                      'Seleccionar dependiente',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: DropdownButtonCustom(
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
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Ibuprofeno"
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
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "500mg"
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
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
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
                          child: DropdownButtonCustom(
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
                          child: DropdownButtonCustom(
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
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                  child: ButtonWithIcon(
                    text: 'Crear alarma',
                    icon: Icons.add,
                    color: Theme.of(context).primaryColorDark,
                    onPressed: () {
                      Navigator.pushNamed(context, '/alarm-summary');
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
