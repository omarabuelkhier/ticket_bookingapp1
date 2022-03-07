import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:trainticket_booking_app/search_arrival.dart';

class arrivestation extends StatefulWidget {
  const arrivestation({Key? key}) : super(key: key);

  @override
  _arrivestationState createState() => _arrivestationState();
}

class _arrivestationState extends State<arrivestation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arrival Station'),
        actions: [
          // Navigate to the Search Screen
          IconButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => searcharrival())),
              icon: Icon(Icons.search))
        ],
      ),
    );
  }
}
