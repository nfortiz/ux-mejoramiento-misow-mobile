import 'package:flutter/material.dart';


class ButtonWithIcon extends StatelessWidget {

  final String text;
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  const ButtonWithIcon({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      child: OutlinedButton(        
        style: OutlinedButton.styleFrom(   
               
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          shape: RoundedRectangleBorder(        
            borderRadius: BorderRadius.circular(16), // <-- Radius
          ),
          backgroundColor: Theme.of(context).primaryColorDark,
          side: BorderSide(
            color: Theme.of(context).primaryColorDark,
          ),          
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, color: Colors.white),
            const SizedBox(width: 10),
            Text(text, style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}

