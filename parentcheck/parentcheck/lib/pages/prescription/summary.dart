import 'package:flutter/material.dart';
import 'package:parentcheck/components/button_with_icon.dart';
import 'package:parentcheck/components/dropdown_button_custom.dart';
import 'package:parentcheck/components/prescription/prescription_list_item.dart';

class PrescriptionSummaryPage extends StatefulWidget {
  const PrescriptionSummaryPage({super.key});

  @override
  State<PrescriptionSummaryPage> createState() =>
      _PrescriptionSummaryPageState();
}

class _PrescriptionSummaryPageState extends State<PrescriptionSummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ParentCheck'),
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 24, right: 24, top: 24),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 48),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Resumen prescripción',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
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
                    'Medicamentos',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      PrescriptionListItem(
                        overline: 'Inicio 22/02/2025 9:00 AM',
                        headline: 'Loratadina 500mg',
                        supportingText: 'Cada 6 horas por 5 días',
                        onPressed: () {
                          Navigator.pushNamed(context, '/prescription/edit');
                        },
                      ),
                      Divider(height: 0),
                      PrescriptionListItem(
                        overline: 'Inicio 22/02/2025 9:00 AM',
                        headline: 'Loratadina 500mg',
                        supportingText: 'Cada 6 horas por 5 días',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: ButtonWithIcon(
              text: 'Crear alarmas',
              icon: Icons.alarm,
              color: Theme.of(context).primaryColorDark,
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
          ),
        ],
      ),
    );
  }
}
