import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("todo_list");
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _todoNameController = TextEditingController();
  //List<String> todos = ["Brush teeth", "Taking breakfast"];

  Box todoBox;

  @override
  void initState() {
    todoBox = Hive.box("todo_list");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Hive"),
        elevation: 1,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
                decoration: InputDecoration(hintText: "Enter todo"),
                controller: _todoNameController),
            SizedBox(height: 10),
            ElevatedButton(
                child: Text("Submit"),
                onPressed: () async {
                  String todoName = _todoNameController.text;

                  todoBox.add(todoName);
                  var myTodoName = await todoBox.get('todoName');

                  print('todo: $myTodoName');
                }),
            SizedBox(height: 10),
            Expanded(
                child: ValueListenableBuilder(
              valueListenable: Hive.box("todo_list").listenable(),
              builder: (_, box, widget) {
                return ListView.builder(
                    itemCount: todoBox.keys.toList().length,
                    itemBuilder: (_, index) {
                      return Card(
                        elevation: 1,
                        child: ListTile(
                            title: Text(todoBox.getAt(index)),
                            trailing: SizedBox(
                              width: 100,
                              child: Row(
                                children: [
                                  IconButton(
                                      icon: Icon(Icons.edit_outlined),
                                      color: Colors.blue,
                                      onPressed: () {}),
                                  IconButton(
                                      icon: Icon(Icons.delete_outlined),
                                      color: Colors.red,
                                      onPressed: () {})
                                ],
                              ),
                            )),
                      );
                    });
              },
            ))
          ],
        ),
      ),
    );
  }
}
