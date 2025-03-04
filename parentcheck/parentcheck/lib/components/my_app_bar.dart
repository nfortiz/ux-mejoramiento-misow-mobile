import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isHome;

  const CustomAppBar({super.key, this.isHome = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleTextStyle: TextStyle(
        color: Color(0xff171C1F),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      title: Text('ParentCheck'),
      backgroundColor:  Theme.of(context).primaryColorLight,
      leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Action for more button
          },
        ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}