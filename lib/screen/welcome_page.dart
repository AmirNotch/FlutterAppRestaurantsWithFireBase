import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screen/login_page.dart';

class WelcomePage extends StatelessWidget {
  late BuildContext context;
  Widget button(
      {required String name, Color? color, required Color textColor,required Function() ontap}) {
    return Container(
      height: 45,
      width: 300,
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: color,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.green, width: 2),
            borderRadius: BorderRadius.circular(30)),
        onPressed: () {
        },
        child: Text(
          name,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }


    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.deepPurple,
              child: Center(
                child: Image.asset('images/images.png'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Добро пожаловать в Delivery Almau",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Column(
                    children: [
                      Text("В приложение собранно более 10 ресторанов"),
                      Text("Самые лучшие рестораны со вкусной едой")
                    ],
                  ),
                  button(
                      name: 'Авторизация',
                      color: Colors.green,
                      textColor: Colors.white, ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  }),
                  button(
                      name: 'Регистрация',
                      color: Colors.white,
                      textColor: Colors.green, ontap: () { _navigateToNextScreen(context); }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => LoginPage()));
  }
}

