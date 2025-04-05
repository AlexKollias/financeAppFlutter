import 'package:flutter/material.dart';

class LoginSignUp extends StatefulWidget {
  const LoginSignUp({super.key});

  @override
  State<LoginSignUp> createState() => _LoginSignUpState();
}

class _LoginSignUpState extends State<LoginSignUp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: login(

      )
    );
  }
}


class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Login'),
            backgroundColor: Colors.lightBlue,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start, // This centers children vertically
              crossAxisAlignment: CrossAxisAlignment.center, // This centers children horizontally
              children: [
                SizedBox(
                  height: 100,
                ),
                Text('Email or Username'),
                SizedBox(
                  width: 250.0,
                  height: 30.0,
                  child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your email or username",
                      contentPadding: EdgeInsetsDirectional.symmetric(
                        vertical: 8,
                        horizontal: 10,
                      )
                    ),
                  ), 
                ),
                SizedBox(height: 20,),
                Text("Enter your password"),
                SizedBox(
                  width: 250.0,
                  height: 30.0,
                  child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your password",
                      contentPadding: EdgeInsetsDirectional.symmetric(
                        vertical: 8,
                        horizontal: 10,
                      )
                    ),
                  ), 
                ),
              ],
              ),
          )
        )
    );
  }
}