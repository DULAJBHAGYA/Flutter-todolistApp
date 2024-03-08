import 'package:flutter/material.dart';
import 'package:todolist/backend/todolist.dart';
import 'package:todolist/frontend/color.dart';

class ToDoItems extends StatefulWidget {
  final ToDo todo;
  const ToDoItems({Key? key, required this.todo}) : super(key: key);

  @override
  _ToDoItemsState createState() => _ToDoItemsState();
}

class _ToDoItemsState extends State<ToDoItems> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          setState(() {
            isChecked = !isChecked;
          });
          print('Clicked on to do item.');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          isChecked ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          'Check Mail',
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 35,
              width: 35,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: tdBlue,
                borderRadius: BorderRadius.circular(5),
              ),
              child: IconButton(
                color: Colors.white,
                iconSize: 18,
                icon: Icon(Icons.edit),
                onPressed: () {},
              ),
            ),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: tdRed,
                borderRadius: BorderRadius.circular(5),
              ),
              child: IconButton(
                color: Colors.white,
                iconSize: 18,
                icon: Icon(Icons.delete),
                onPressed: () {
                  print('Clicked on delete icon');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
