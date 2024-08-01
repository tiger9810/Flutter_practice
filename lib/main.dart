import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: TodoListPage(),
    );
  }
}

class TodoListPage extends StatefulWidget {
  @override
  _TodoListPageState createState() => _TodoListPageState();
}

// list一覧用Widget
class _TodoListPageState extends State<TodoListPage> {
    List<String> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('all List')
      ),
      body:ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(title: Text(todoList[index])
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newListText = await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context){
              return TodoAppPage();
            }),
        );
        if (newListText != null) {
          setState(() {
            todoList.add(newListText);
          });
        }
      },
      child: Icon(Icons.add),
    ),
    );
  }
}

// TodoAppPageをStatefulWidgetにする
class TodoAppPage extends StatefulWidget {
  @override
  _TodoAddPageState createState() => _TodoAddPageState();
}

class _TodoAddPageState extends State<TodoAppPage> {
  String _text = "";

  @override
  Widget build(BuildContext context){
   return Scaffold(
    appBar: AppBar(
      title:Text('AddPage'),
      automaticallyImplyLeading: false,
      ),
    body: Container(
      padding: EdgeInsets.all(64),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(_text, style: TextStyle(color: Colors.amber)),
          
          const SizedBox(height: 8),
          TextField(
            onChanged: (String value) {
              setState(() {
                _text = value;
              });
            },
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){
                Navigator.of(context).pop(_text);
              },
              child: Text('Add list')
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('cancel')
            ),
            )
        ],
      )
    )
   );
  }
}