import 'package:flutter/material.dart';

class LoadingPrescriptionPage extends StatefulWidget {
  const LoadingPrescriptionPage({super.key});

  @override
  State<LoadingPrescriptionPage> createState() =>
      _LoadingPrescriptionPageState();
}

class _LoadingPrescriptionPageState extends State<LoadingPrescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                spacing: 24,
                children: [
                  CircularProgressIndicator(color: Colors.white),
                  Text(
                    'Procesando imagen...',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
