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

class HomePage extends StatelessWidget {//StatelessWidget無法改變頁面數據
  int countNum = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 200,),
        Text("${this.countNum}"),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text("測試按鈕"),
          onPressed: (){
            this.countNum++;
            print(countNum);
          },
        )
      ],
    );
  }
}

