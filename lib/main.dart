import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(Addapp());
class Addapp extends StatefulWidget {
  @override
  _AddappState createState() => _AddappState();
}

class _AddappState extends State<Addapp> {
  TextEditingController first=TextEditingController();
  TextEditingController second=TextEditingController();
  TextEditingController result=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("add numbers"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              TextField(controller: first,
                decoration: InputDecoration(
                  hintText: "read first number"
                ),
              ),
              TextField(controller: second,
                decoration: InputDecoration(
                  hintText: "read second number"
                ),
              ),
              RaisedButton(
                onPressed: (){
                  String getfirst=first.text;
                  String getsecond=second.text;
                  int a=int.parse(getfirst);
                  int b=int.parse(getsecond);
                  int c=a+b;
                  print(c);
                  String x=c.toString();
                  result.text=x;
                },
                color: Colors.white,
                child: Text("add"),
              ),
              TextField(
                controller: result,
                decoration: InputDecoration(
                  hintText: "result"
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
