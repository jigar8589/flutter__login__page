import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
            child: Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Login',
                style: TextStyle(fontSize: 30),
                ),

                CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/login.webp'),
),
                Padding
                  (padding :const EdgeInsets.all(12.0),
                   child: TextField(

                  decoration: InputDecoration(
                      labelText:'Number',
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Enter Number'),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
      ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: ()=>{},
                    child: Text('Login')

                ),
              ],
            ),
),
),
    ),
    );
  }
}
