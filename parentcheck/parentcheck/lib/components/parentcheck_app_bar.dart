import 'package:flutter/material.dart';

class ParentCheckAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool back;
  final bool centerTitle;
  final bool avatar;

  const ParentCheckAppBar({
    super.key,
    this.back = false,
    this.centerTitle = false,
    this.avatar = false,
  });
    
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
      backgroundColor: Theme.of(context).primaryColorLight,
      automaticallyImplyLeading: false,
      leading:
          back
              ? IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
              : null,
      actionsIconTheme: IconThemeData(size: 32),
      actionsPadding: EdgeInsets.all(8),
      actions: avatar ? [Icon(Icons.account_circle)] : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
