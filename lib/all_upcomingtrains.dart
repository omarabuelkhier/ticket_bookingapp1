import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

 class upcomingtrains extends StatefulWidget {
   const upcomingtrains({Key? key}) : super(key: key);

   @override
   _upcomingtrainsState createState() => _upcomingtrainsState();
 }

 class _upcomingtrainsState extends State<upcomingtrains> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.deepPurple,
       appBar: AppBar(
         leading: IconButton(icon: Icon(Icons.arrow_back),onPressed:(){
           Navigator.pop(context);
         } ,),
         backgroundColor: Color(0xff240e8b),
         title:Text('Departure Station'),centerTitle:true ,

       ),
       body:PopupMenuItem(child:Text('Services')

       ,onTap: (){},

       )
     );


   }
 }
