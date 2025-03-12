import 'package:flutter/material.dart';

class PrescriptionListItem extends StatelessWidget {
  final String overline;
  final String headline;
  final String supportingText;
  final void Function() onPressed;

  const PrescriptionListItem({
    super.key,
    required this.overline,
    required this.headline,
    required this.supportingText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Color.fromRGBO(228, 233, 236, 1),
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(overline, maxLines: 1, style: TextStyle(fontSize: 12)),
            Text(headline, maxLines: 1, style: TextStyle(fontSize: 16)),
          ],
        ),
        subtitle: Text(
          supportingText,
          maxLines: 1,
          style: TextStyle(fontSize: 14),
        ),
        trailing: IconButton(icon: Icon(Icons.edit), onPressed: onPressed),
      ),
    );
  }
}
