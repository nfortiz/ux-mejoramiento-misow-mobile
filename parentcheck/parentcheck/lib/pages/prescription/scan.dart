import 'package:flutter/material.dart';
import 'package:parentcheck/components/button_with_icon.dart';

class ScanPrescriptionPage extends StatefulWidget {
  const ScanPrescriptionPage({super.key});

  @override
  State<ScanPrescriptionPage> createState() => _ScanPrescriptionPageState();
}

class _ScanPrescriptionPageState extends State<ScanPrescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ParentCheck'),
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
                const Text(
                  'Escanear prescripción',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24, 48, 24, 98),
            child: Column(
              spacing: 48,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      width: 160,
                      image: AssetImage('assets/scan_document.png'),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16,
                  children:
                      [
                            '1. Asegurate de contar con una habitación con buena iluminación.',
                            '2. Coloca el documento en una superficie plana.',
                            '3. Cuando estes listo, presiona el botón Abrir cámara.',
                            '4. Manten el documento centrado en las líneas de guía.',
                            '5. Toma una foto del documento.',
                          ]
                          .map(
                            (String value) =>
                                Text(value, style: TextStyle(fontSize: 16)),
                          )
                          .toList(),
                ),
                Row(
                  children: [
                    Text(
                      '¡La aplicación procesará tu documento!',
                      style: TextStyle(fontSize: 16),
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
                  padding: EdgeInsets.all(24),
                  child: ButtonWithIcon(
                    text: 'Abrir cámara',
                    icon: Icons.camera_alt,
                    color: Theme.of(context).primaryColorDark,
                    onPressed: () {
                      Navigator.pushNamed(context, '/prescription/loading');
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
