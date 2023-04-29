import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'signup.dart';

void main() {
  runApp(Main());


}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}



class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  final _formkey =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
            child: Center(


            child:Form(
              key: _formkey,
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
                     child: TextFormField(
                       validator: (value){
                         if(value!.length !=10){
                           return 'number is not valide';
    }else
      {
        return null;
      }
                         print(value);
                         print('into validator');
                       },

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
                      onPressed: ()=>{
                      if(_formkey.currentState!.validate()){
                      print('hurreee')
    }else
      {
        print('not validate')
      }


    },
                      child: Text('Login')),
                   InkWell(
                     onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp(),
                        ));
                       },
                    child: Text('sign_up',
                    style: TextStyle(fontSize: 30),
                    ),
                  ),

                ],
              ),
            ),
),
),


    );

  }
}
