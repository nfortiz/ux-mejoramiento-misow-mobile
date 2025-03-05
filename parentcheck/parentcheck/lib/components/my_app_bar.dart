import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isHome;
  final bool centerTitle;

  const CustomAppBar({super.key, this.isHome = false, this.centerTitle = false });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle,
      titleTextStyle: TextStyle(
        color: Color(0xff171C1F),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      title: Text('ParentCheck'),
      backgroundColor:  Theme.of(context).primaryColorLight,
      leading: IconButton(

          icon: isHome ? Icon(null) : Icon(Icons.arrow_back),
          onPressed: () {
            // Action for more button
          },
        ),
      
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}