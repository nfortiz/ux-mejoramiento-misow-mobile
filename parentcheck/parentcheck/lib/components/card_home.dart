import 'package:flutter/material.dart';

class CardHome extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  const CardHome({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Card(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text(
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff171C1F),
                      ),
                    ),
                    subtitle: Text(
                      subtitle,
                      style: TextStyle(fontSize: 14, color: Color(0xff40484C)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 50,
              height: 80,
              child: Image(image: AssetImage(imagePath)),
            ),
          ],
        ),
      ),
    );
  }
}
