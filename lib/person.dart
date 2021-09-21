import 'package:flutter/material.dart';

class Person extends StatefulWidget {
  const Person({Key? key}) : super(key: key);

  @override
  _PersonState createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
          child:
          Row(
        children:<Widget> [
          Container(
            height: 200,
            width: screenWidth/3,
            color: Colors.lightGreen,
            child: Center(
                child: Text(
              screenWidth.toString(),
              style: TextStyle(fontSize: 20),
            )),
          ),
          Container(
            height: 200,
            width: screenWidth/3,
            color: Colors.pink,
          ),
          GestureDetector(
            onTap: (){

            },
            child: Container(
              height: 200,
              width: screenWidth/3,
              color: Colors.blue,
            ),
          ),
        ],
      )
      ),
    );
  }
}
