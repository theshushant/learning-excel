import 'package:flutter/material.dart';
import 'package:learnexcel/text_to_speak.dart';

class Random extends StatefulWidget {
  @override
  _RandomState createState() => _RandomState();
}

class _RandomState extends State<Random> {
  bool isTest = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isTest?"Exam Time":"Preparation Time"),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.yellow,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    isTest = false;
                  });
                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  color: isTest?null:Colors.red,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  margin: EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Text("Practise",style: TextStyle(color: Colors.blueAccent),),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isTest = true;
                  });

                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  color: !isTest?null:Colors.red,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  margin: EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Text("Test",style: TextStyle(color: Colors.blueAccent),),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: TextToSpeak(
          "Patrick chutiya hai?",
          answer: "yes",
          isTest: isTest,
        ),
      ),
    );
  }
}
