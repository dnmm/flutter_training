import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_management_rivarpod/models/todo.dart';
import 'package:state_management_rivarpod/notifier/dodos_notifire.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Riverpod',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends HookWidget {
  const MyHomePage({Key? key}) : super(key: key);

  get showEditDiaglog => null;

  Future<dynamic> showEditDialog(BuildContext ctx, Todo todoItem) {
    final editTextController =
        TextEditingController(text: todoItem.description);
    return showDialog(
        context: ctx,
        builder: (context) {
          return AlertDialog(
            content: TextField(
              controller: editTextController,
            ),
            actions: [
              ElevatedButton(
                child: const Text('Cancel'),
                onPressed: () => Navigator.of(context).pop(),
              ),
              ElevatedButton(
                  child: const Text('Save'),
                  onPressed: () {
                    context.read(todoListProvider).editTodo(
                        id: todoItem.id, descripition: editTextController.text);
                    Navigator.of(context).pop();
                  })
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final descController = useTextEditingController();
    final todoList = useProvider(todoListProvider.state);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo App"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              controller: descController,
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: todoList.length,
                itemBuilder: (BuildContext contex, int index) {
                  final todoItem = todoList[index];
                  return Card(
                    elevation: 5,
                    child: ListTile(
                      title: Text("${todoItem.description}"),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () => showEditDiaglog,
                            icon: const Icon(Icons.edit),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () => contex
                                .read(todoListProvider)
                                .removeTodo(todoItem.id),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context
            .read(todoListProvider)
            .addTodo(description: descController.text),
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  useProvider(state) {}
}
