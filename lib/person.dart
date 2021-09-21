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
          child: screenWidth >=600 ?
          Row(
        children:<Widget> [
          Container(
            height: 200,
            width: 200,
            color: Colors.lightGreen,
            child: Center(
                child: Text(
              screenWidth.toString(),
              style: TextStyle(fontSize: 20),
            )),
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.pink,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.blue,
          ),
        ],
      ) :
      Row(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.blue,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
        ],
      )
      ),
    );
  }
}
