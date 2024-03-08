import 'package:flutter/material.dart';

void onPressedAction(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
      ),
    builder: (BuildContext context) {
      return Container(
        height: 300,
        color: Color.fromARGB(255, 198, 197, 237),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add task',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Type tassk to add..',
                  contentPadding: EdgeInsets.only(left: 20),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
