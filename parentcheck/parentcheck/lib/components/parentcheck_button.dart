import 'package:flutter/material.dart';


class ParentCheckButton extends StatelessWidget {

  final String text;
  final IconData? icon;
  final Color? color;
  final VoidCallback onPressed;

  const ParentCheckButton({
    super.key,
    this.icon,
    this.color,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: ElevatedButton.icon( 
        icon: icon != null ? Icon(icon) : null,
        style: ElevatedButton.styleFrom(
          elevation: Theme.of(context).floatingActionButtonTheme.elevation ?? 4,
          shape: RoundedRectangleBorder(        
            borderRadius: BorderRadius.circular(16), // <-- Radius
          ),
          backgroundColor: color ?? Theme.of(context).primaryColorDark,
          side: BorderSide(
            color: Theme.of(context).primaryColorDark,
          ),          
        ),
        onPressed: onPressed,
        label: Text(text, style: TextStyle(color: Colors.white))
      ),
    );
  }
}

