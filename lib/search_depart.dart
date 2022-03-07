import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class searchdepart extends StatefulWidget {
  const searchdepart({Key? key}) : super(key: key);

  @override
  _searchdepartState createState() => _searchdepartState();
}

class _searchdepartState extends State<searchdepart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The search area here
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
                        /* Clear the search field */
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
