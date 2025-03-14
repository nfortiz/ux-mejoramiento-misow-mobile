import 'package:flutter/material.dart';

class HistorialPreview extends StatelessWidget {

  final GestureTapCallback onPressed;

  const HistorialPreview({super.key, this.onPressed = defaultOnPressed});
  
  static void defaultOnPressed() {
    // Default action when no function is provided
    print("HistorialPreview button pressed");
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 118,
      child:  Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Historial',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        SizedBox(
          width: 400,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyDateChip(day: '12', month: 'Ene', onPressed: onPressed,),
            MyDateChip(day: '13', month: 'Ene',  onPressed: onPressed),
            MyDateChip(day: '14', month: 'Ene',  onPressed: onPressed),
            MyDateChip(day: '15', month: 'Ene', isSelected: true,),
            MyDateChip(day: '16', month: 'Ene',  onPressed: onPressed),
            MyDateChip(day: '17', month: 'Ene', onPressed: onPressed),
            MyDateChip(day: '18', month: 'Ene',  onPressed: onPressed),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: SizedBox(
            width: 287,
            child: Divider(),
          ),
        ),
      ],
    ),
    );
  }
}


class  MyDateChip extends StatelessWidget {

  final String day;
  final String month;
  final bool isSelected;
  final GestureTapCallback onPressed;
  
  const MyDateChip({super.key, required this.day, required this.month, this.isSelected = false, this.onPressed = defaultOnPressed});
  
  static void defaultOnPressed() {
    // Default action when no function is provided
    print("MyDateChip button pressed");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Theme.of(context).primaryColorDark : Color(0xffF0F4F7),
          border: Border.all(color: isSelected ? Theme.of(context).primaryColorDark : Color(0xffDEE3E6)),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(1, 1),
            ),
          ]
        ),
        width: 35,
        height: 45,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(day, 
              style: TextStyle(
                fontSize: 14, 
                fontWeight: FontWeight.bold, 
                color: isSelected ? Colors.white : Theme.of(context).primaryColorDark
              )
            ),
            Text(
              month, 
              style: TextStyle(
                fontSize: 14, 
                fontWeight: FontWeight.normal, 
                color: isSelected ? Colors.white : Theme.of(context).primaryColorDark
              )
            ),
          ],
        ),
      ),
    );
  }
}