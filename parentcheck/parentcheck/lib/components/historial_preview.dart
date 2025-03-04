import 'package:flutter/material.dart';

class HistorialPreview extends StatelessWidget {
  const HistorialPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 118,
      width: 393,
      padding: EdgeInsets.symmetric(horizontal: 70),
      decoration: BoxDecoration(
        color: Colors.white70,
      ),
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
            MyDateChip(day: '12', month: 'Ene'),
            MyDateChip(day: '13', month: 'Ene'),
            MyDateChip(day: '14', month: 'Ene'),
            MyDateChip(day: '15', month: 'Ene'),
            MyDateChip(day: '16', month: 'Ene'),
            MyDateChip(day: '17', month: 'Ene'),
            MyDateChip(day: '18', month: 'Ene'),
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

  const MyDateChip({super.key, required this.day, required this.month});

  final String day;
  final String month;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF0F4F7),
        border: Border.all(color: Color(0xffDEE3E6)),
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
          Text(day, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColorDark)),
          Text(month, style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Theme.of(context).primaryColorDark)),
        ],
      ),
    );
  }
}