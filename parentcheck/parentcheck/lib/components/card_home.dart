import 'package:flutter/material.dart';


class CardHome extends StatelessWidget {

  final String title;
  final String subtitle;

  const CardHome({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 70),
      height: 80,
      width: 344,
      child: Card(
        
        color: Colors.white,
        child: Row(
          children: [
            SizedBox(
              width: 344,
              height: 80,
              child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  title: Text(
                    this.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff171C1F)
                    ),
                  ),
                  subtitle: Text(
                    this.subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff40484C)
                    ),
                  ),
                ),
              ],
            ),
            
          ),            
          ],
        ),
      ),
    );
    
  }
}