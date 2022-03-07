import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:trainticket_booking_app/search_depart.dart';

class departstation extends StatefulWidget {
  const departstation({Key? key}) : super(key: key);

  @override
  _departstationState createState() => _departstationState();
}

class _departstationState extends State<departstation> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Departure Station'),
        actions: [
          // Navigate to the Search Screen
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => searchdepart())),
              icon: Icon(Icons.search))
        ],
      ),
    );


  }
}
