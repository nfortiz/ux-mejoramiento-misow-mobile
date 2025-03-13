import 'package:flutter/material.dart';
import 'package:flutter_doc_scanner/flutter_doc_scanner.dart';
import 'package:parentcheck/components/parentcheck_button.dart';
import 'package:parentcheck/components/parentcheck_app_bar.dart';

class ScanPrescriptionPage extends StatefulWidget {
  const ScanPrescriptionPage({super.key});

  @override
  State<ScanPrescriptionPage> createState() => _ScanPrescriptionPageState();
}

class _ScanPrescriptionPageState extends State<ScanPrescriptionPage> {
  Future<void> scanDocument() async {
    await FlutterDocScanner().getScanDocuments();

    if (mounted) {
      setState(() {
        Navigator.pushNamed(context, '/prescription/summary');
      });
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ParentCheckAppBar(avatar: true, back: true),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 48),
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
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 48),
                    child: Image(
                      width: 160,
                      image: AssetImage('assets/scan_document.png'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 48),
                    child: Column(
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
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '¡La aplicación procesará tu documento!',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      persistentFooterButtons: [
        ParentCheckButton(
          text: 'Abrir cámara',
          icon: Icons.camera_alt,
          color: Theme.of(context).primaryColorDark,
          onPressed: () {
            scanDocument();
          },
        ),
      ],
    );
  }
}
