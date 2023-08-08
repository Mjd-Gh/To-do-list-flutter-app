import 'package:flutter/material.dart';
import 'data_model/data_model.dart';
import 'data_set/to_do_list_dataset.dart';

void main() {
  runApp(MainApp());
}

// ignore: must_be_immutable
class MainApp extends StatelessWidget {
  MainApp({super.key,});

  List<ListDataModel> toDoList = []; //List of type ListDataModel class


  @override
  Widget build(BuildContext context) {

    //Loop for adding all datasets in a one place "List"
    for (var element in dataList) {
      toDoList.add(ListDataModel.fromJeson(element));
    }

    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Groceries",),
          centerTitle: true,
          leading: const Icon(Icons.arrow_back),
          actions: const [
             Padding(
               padding: EdgeInsets.only(right: 10),
               child: Icon(Icons.edit),
             ),
          ],
          backgroundColor: Colors.indigo[400],
        ),
        body:  SafeArea(
          child: 
            SingleChildScrollView( //Arrang the items in a Scroller
              child: Column(
                //The children of the column will be the item in side the list 
                children: toDoList.map((item) => ListTile(  //Convert the list into a map
                //Then display it in ListTitle widget
                      leading: Icon(item.completed?  Icons.check_box : Icons.radio_button_unchecked),
                      title: Text(item.todo),
                    ),).toList(),
            ),
          ),
        ),
      ),
    );
  }

}
