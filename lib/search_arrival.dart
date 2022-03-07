import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class searcharrival extends StatefulWidget {
  const searcharrival({Key? key}) : super(key: key);

  @override
  _searcharrivalState createState() => _searcharrivalState();
}

class _searcharrivalState extends State<searcharrival> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The search area here
        backgroundColor: Colors.red,
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {

                      },
                    ),
                    hintText: 'Search...',
                    border: InputBorder.none),
              ),
            ),
          )),
    );
  }
}
