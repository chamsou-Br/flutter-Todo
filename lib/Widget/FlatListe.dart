import 'package:flutter/material.dart';
import 'package:todo/Data/DataProvider.dart';
import 'package:todo/Data/task.dart';
import 'package:todo/Widget/itemListe.dart';
import 'package:provider/provider.dart';

class FlatListe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List data = Provider.of<ProviderData>(context).getData();
    return Container(
      child: ListView.builder(
          itemBuilder: (context, index) {
            return ItemTodo(
              title: data[index].title,
              isChecked: data[index].ischecked,
              onPresse: () {
                Provider.of<ProviderData>(context, listen: false)
                    .checkTask(data[index]);
              },
              remove: () {
                Provider.of<ProviderData>(context, listen: false)
                    .removeTsk(data[index]);
              },
            );
          },
          itemCount: data.length),
    );
  }
}
