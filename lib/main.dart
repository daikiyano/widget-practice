import 'package:flutter/material.dart';
import 'package:widget_practice/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  // const MyHomePage({Key? key,this.title}) : super(key: key);
  const MyHomePage({Key? key,this.title = "test"}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daikiのflutter大学'),
        actions: <Widget>[
          Icon(Icons.add),
          Icon(Icons.share),
        ],
      ),
      body: Center(
       child: RaisedButton(
         child: Text("次へ"),
         onPressed: () {
           // ここに押したら反応するコードを書く
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => NextPage(),
             )
           )
         },
       ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
