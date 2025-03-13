import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class GoogleButton extends StatelessWidget {

  final String text;
  final VoidCallback onPressed;

  const GoogleButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: FilledButton.icon( 
        icon: SvgPicture.asset('assets/google_logo.svg'),
        style: FilledButton.styleFrom(
          backgroundColor: Color.fromRGBO(227, 227, 227, 1),        
        ),
        onPressed: onPressed,
        label: Text(text, style: TextStyle(color: Colors.black))
      ),
    );
  }
}

