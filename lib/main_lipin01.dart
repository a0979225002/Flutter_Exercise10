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

class HomePage extends StatefulWidget {//StatefulWidget有狀態(可動態更改頁面)
  @override
  _HomePageState createState() => _HomePageState(

  );
}

class _HomePageState extends State<HomePage> {
  int countNum = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 200,),
        Chip(
          label: Text("$countNum"),
        ),
        RaisedButton(
          child: Text("測試按鈕"),
          onPressed: (){
            setState(() {//只有StatefulWidget 有這個方法,動態更改頁面資料
              this.countNum+=10;
              print("$countNum");
            });
          },
        )
      ],
    );
  }
}


