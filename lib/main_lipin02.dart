import 'package:flutter/material.dart';

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("動態更改頁面內資訊"),
        ),
        body: HomePage() ,
      ),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countNum = 0;
  List list = new List();
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(20),
            child: Column(
              children: this.list.map((value){
                return ListTile(
                  title: Text(value),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 20,),
          RaisedButton(
            child: Text("新增數據按鈕"),
            onPressed: (){
              setState(() {
                this.countNum++;
                this.list.add("新增數據+${this.countNum}");
              });
            },
          )
        ],
      );
  }
}




