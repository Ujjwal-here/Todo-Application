import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text(
          "Todo",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Image(
          height: 100,
          image: AssetImage("assets/Google.png"),
        ),
      ),
    );
  }
}
