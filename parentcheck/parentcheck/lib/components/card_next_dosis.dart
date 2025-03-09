import 'package:flutter/material.dart';

class CardNextDosis extends StatelessWidget {
  const CardNextDosis({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 70),
      width: 344,
      child: Card(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              title: Text(
                'Loratadina 100mg',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff171C1F)
                ),
              ),
              subtitle: Text(
                '1 dosis cada 6 horas',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff40484C)
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[              
                TextButton.icon(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(
                      color: Color(0xff444748)
                    ),
                  ),
                  icon: const Icon(Icons.notifications_outlined, color: Color(0xff444748)),
                  label: const Text('02:00 PM', style: TextStyle(color: Color(0xff444748)),),
                  onPressed: () {
                  },
                )               
              ],
            ),
          ],
        ),
      ),
    );
  }
}