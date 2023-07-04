import 'package:flutter/material.dart';
import 'package:todo_app_flutter/screens/types.dart';

class ToDoItem extends StatefulWidget {
  const ToDoItem({Key? key, required this.item}) : super(key: key);

  final Item item;

  @override
  State<ToDoItem> createState() => _ToDoItemState();
}

class _ToDoItemState extends State<ToDoItem> {
  void addItem() {
    setState(() {
      widget.item.isChecked = !widget.item.isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Checkbox(
          value: widget.item.isChecked,
          onChanged: (value) {
            widget.item.isChecked = value!;
          },
        ),
        title:
            Text(widget.item.title), // Assuming `Item` has a `title` property
      ),
    );
  }
}
