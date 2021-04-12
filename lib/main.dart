import 'package:flutter/material.dart';
import 'package:todo/Data/DataProvider.dart';
import 'package:todo/Screens/todoListe.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TodoListe(),
      ),
    );
  }
}
