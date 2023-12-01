import 'package:flutter/material.dart';
import 'package:homepage_salon7/services_list_screen..dart';


void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
            children: [
              Row(
                children: [
                  Image(
                    image: NetworkImage('images/scissors.jpeg'),
                    width: 110,
                    height: 100,
                    fit: BoxFit.cover,
                  ),

                ],
              ),


              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text(
                    "SCISSOR's",
                    style: TextStyle(fontSize: 20,
                        fontFamily: "Courier",
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(

                children: [
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  Text("SERVICES",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent,
                    ),)
                ],
              ),
              Expanded(
                child: ServicesListScreen(),
              ),
            ]
        ),
      ),

    );
  }
}