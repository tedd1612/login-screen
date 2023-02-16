import 'package:flutter/material.dart';
import 'main.dart';
import 'package:ui/Signup_screen';

class Login_screen extends StatelessWidget {
  const Login_screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                "Hey There..",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )),
              SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) => print('Mail Id : $value'),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'mail id',
                  hintStyle: const TextStyle(),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) => print('Mail Id : $value'),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: const TextStyle(),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0XAA519AED),
                    padding: EdgeInsets.symmetric(horizontal: 40)),
                onPressed: () {
                  print('Clicked login');
                },
                child: Text(
                  'Log in',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn't have account"),
                  TextButton(
                      onPressed: () {
                        print("Clicked Create Account");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => signup_screen()));
                      },
                      child: Text("Create Account"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
