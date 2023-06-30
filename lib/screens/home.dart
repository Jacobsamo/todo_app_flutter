import 'package:flutter/material.dart';
import 'package:todo_app_flutter/models/Item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

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
    items.add(newItem);
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
          Item item = items[index];
          return ListTile(
            title: Text(item.title),
            subtitle: Text(item.notes ?? ''),
            trailing: Text(item.createdAt.toString()),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addItem,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
