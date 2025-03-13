import 'package:flutter/material.dart';

class ParentCheckDropdown extends StatefulWidget {
  final Text placeholder;
  final List<MenuItemButton> children;

  const ParentCheckDropdown({
    super.key,
    required this.placeholder,
    required this.children,
  });

  @override
  State<ParentCheckDropdown> createState() =>
      _ParentCheckDropdownState();
}

class _ParentCheckDropdownState extends State<ParentCheckDropdown> {
  final FocusNode _buttonFocusNode = FocusNode(debugLabel: 'Menu Button');
  late Widget label = widget.placeholder;

  handleOnPressed(MenuItemButton widget) {
    setState(() {
      label = widget.child!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      childFocusNode: _buttonFocusNode,
      menuChildren:
          widget.children.map((MenuItemButton widget) {
            return MenuItemButton(
              onPressed: () => handleOnPressed(widget),
              style: ButtonStyle(
                minimumSize: WidgetStateProperty.resolveWith<Size>(
                  (Set<WidgetState> states) =>
                      Size(_buttonFocusNode.size.width, 56),
                ),
              ),
              child: widget.child,
            );
          }).toList(),
      alignmentOffset: Offset(0, 8),
      builder: (
        BuildContext context,
        MenuController controller,
        Widget? child,
      ) {
        return ElevatedButton.icon(
          focusNode: _buttonFocusNode,
          onPressed: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
          label: label,
          icon: Icon(
            controller.isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down,
            color: Theme.of(context).primaryColor,
          ),
          style: ButtonStyle(
            fixedSize: WidgetStateProperty.resolveWith<Size>((
              Set<WidgetState> states,
            ) {
              return Size.fromHeight(56);
            }),
            shape: WidgetStateProperty.resolveWith<RoundedRectangleBorder>((
              Set<WidgetState> states,
            ) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              );
            }),
            elevation: WidgetStateProperty.resolveWith<double>((
              Set<WidgetState> states,
            ) {
              return Theme.of(context).floatingActionButtonTheme.elevation ?? 4;
            }),
            backgroundColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              return Color.fromRGBO(
                228,
                233,
                236,
                1,
              ); // Use the component's default.
            }),
          ),
        );
      },
    );
  }
}
