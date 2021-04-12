import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Data/DataProvider.dart';
import 'package:todo/Data/task.dart';

class AddnewItem extends StatefulWidget {
  @override
  _AddnewItemState createState() => _AddnewItemState();
}

class _AddnewItemState extends State<AddnewItem> {
  String newItem;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 60, left: 30, right: 30),
        child: Column(
          children: [
            Text(
              'Add Item Here !:>',
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 26,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (val) {
                newItem = val;
              },
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                  hintText: "Add Item",
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Provider.of<ProviderData>(context, listen: false)
                    .addTask(Task(title: newItem));
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueAccent,
                ),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 70),
                child: Text(
                  'Add Task',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
