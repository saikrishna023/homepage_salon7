import 'package:flutter/material.dart';
import 'package:homepage_salon7/services_list_screen..dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Image(
                  image: NetworkImage('images/scissors2.jpg'),
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
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Courier",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "SERVICES",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlueAccent,
                  ),
                )
              ],
            ),
            Expanded(
              child: ServicesListScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
