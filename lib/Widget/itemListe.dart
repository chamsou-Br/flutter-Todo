import 'package:flutter/material.dart';

class ItemTodo extends StatelessWidget {
  ItemTodo({this.title, this.isChecked, this.onPresse, this.remove});
  final String title;
  final bool isChecked;
  final Function onPresse;
  final Function remove;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        remove();
      },
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (newVal) {
          onPresse();
        },
      ),
    );
  }
}
