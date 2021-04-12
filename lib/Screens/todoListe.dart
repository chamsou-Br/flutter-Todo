import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Data/DataProvider.dart';
import 'package:todo/Screens/AddItem.dart';
import 'package:todo/Widget/FlatListe.dart';

class TodoListe extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => AddnewItem());
        },
      ),
      backgroundColor: Colors.blueAccent,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 36,
                    ),
                    radius: 30,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "TodoListe",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 42,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${Provider.of<ProviderData>(context).countData()} listes",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white,
                ),
                child: FlatListe(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
