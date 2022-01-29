import 'package:flutter/material.dart';

class PageTile extends StatelessWidget {
  PageTile(
      {required this.label,
      required this.iconData,
      required this.onTap,
      this.highlighted = false});

  final String label;
  final IconData iconData;
  final VoidCallback onTap;
  final bool highlighted;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: TextStyle(
            color: highlighted ? Colors.purple : Colors.black54,
            fontWeight: FontWeight.w700),
      ),
      leading: Icon(
        iconData,
        color: highlighted ? Colors.purple : Colors.black54,
      ),
      onTap: onTap,
    );
  }
}
