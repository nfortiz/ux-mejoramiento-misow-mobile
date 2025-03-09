import 'package:flutter/material.dart';


class CardHistorial extends StatelessWidget {

  final String title;
  final String subtitle;
  final String time;
  final String imagePath;

  const CardHistorial({super.key, required this.title, required this.subtitle, required this.time, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.supervised_user_circle_outlined),
            title: Text('Camilo', style: TextStyle(fontSize: 16, color: Color(0xff171C1F), fontWeight: FontWeight.bold),),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            title: Text('Loratadina, 10 mg', style: TextStyle(fontSize: 16, color: Color(0xff171C1F), fontWeight: FontWeight.bold),),
            subtitle: Text('1 dosis cada 6 horas'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  TextButton.icon(
                    style: TextButton.styleFrom(
                      textStyle: TextStyle(
                        color: Color(0xff444748)
                      ),
                    ),
                    icon: Icon(Icons.notifications_outlined, color: Theme.of(context).primaryColorDark),
                    label: Text(
                      '02:00 PM', 
                      style: TextStyle(
                        color: Theme.of(context).primaryColorDark, 
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    onPressed: () {
                    },
                  ) 
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100), // <-- Radius
                    ),
                    backgroundColor: Theme.of(context).primaryColorDark,
                     ),
                    onPressed: () {}, 
                    child: Text("Registrar", style: TextStyle(color: Colors.white),)
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}