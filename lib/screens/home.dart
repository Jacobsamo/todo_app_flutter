import 'package:flutter/material.dart';
import 'package:todo_app_flutter/screens/types.dart';
import 'package:todo_app_flutter/components/ToDoItem.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Item> items = [];

  void addItem() {
    Item newItem = Item(
      id: '1',
      title: 'Test item',
      notes: 'test notes',
      createdAt: DateTime.now(),
      lastUpdated: DateTime.now(),
    );
    setState(() {
      items.add(newItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ToDoItem(item: items[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addItem,
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }
}
