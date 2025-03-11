import 'package:flutter/material.dart';

class CardAlarm extends StatelessWidget {

  final String title;
  final String subtitle;

  const CardAlarm({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 148,
      child: Card(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 1),
          ListTile(
            title: Text(title, style: TextStyle(fontSize: 16, color: Color(0xff171C1F), fontWeight: FontWeight.w500),),
            subtitle: Text(subtitle, style: TextStyle(fontSize: 14, color: Color(0xff40484C)),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 85,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xff70787C),
                      ),
                      borderRadius: BorderRadius.circular(100), // <-- Radius
                    ),
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: Text('Editar', style: TextStyle(color: Theme.of(context).primaryColorDark)),
                ),
              ),
              
              const SizedBox(width: 10),
              SizedBox(
                height: 40,
                width: 70,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100), // <-- Radius
                  ),
                  backgroundColor: Theme.of(context).primaryColorDark,
                    ),
                  onPressed: () {},
                  child:
                    const Text('Ver', style: TextStyle(color: Colors.white)),
                ),
              ),              
              const SizedBox(width: 15),
            ],              
          ),
          const SizedBox(height: 10),
        ],
      ),
    ),
    );
    }
}
