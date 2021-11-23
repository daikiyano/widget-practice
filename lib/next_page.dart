
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('次の画面へ'),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.red,
        child: Center(
          child: RaisedButton(
            child: Text("戻る"),
            onPressed: () {
              // ここに押したら反応するコードを書く
             Navigator.pop(context);
            },
          ),
        ),
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    );

  }

}