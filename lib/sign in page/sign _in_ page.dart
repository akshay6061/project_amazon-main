// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_amazon/front%20page%202/front_page2.dart';
import 'package:project_amazon/otp_page/otp_page.dart';
import 'package:project_amazon/verific_page/verific_page.dart';

enum Button {
  signin,
  signup,
}

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  Button _button = Button.signin;

  final _signupFormkey = GlobalKey<FormState>();
  // final _signinFormkey = GlobalKey<FormState>();
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 241, 240, 240),
        appBar: AppBar(
          title: SizedBox(
            child: Image.asset(
              'assets/amazo.in.png',
              width: 100,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FrontPage2(),
                  ));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Welcome",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              tileColor: _button == Button.signup
                  ? Colors.white
                  : Color.fromARGB(255, 241, 240, 240),
              title: Row(
                children: [
                  Text(
                    "Create Account.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("New to Amazon?")
                ],
              ),
              leading: Radio(
                activeColor: Color.fromARGB(255, 248, 97, 10),
                value: Button.signup,
                groupValue: _button,
                onChanged: (Button? val) {
                  setState(() {
                    _button = val!;
                  });
                },
              ),
            ),
            if (_button == Button.signup)
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.white,
                child: Form(
                  key: _signupFormkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "First and Last Name",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 130,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "IN +91",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 1)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                              ),
                            ),
                          ),
                          Container(
                            width: 215,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Mobile number",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 1)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        obscureText: ischecked,
                        decoration: InputDecoration(
                          hintText: "Set password",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text("Password must be at least 6 characters.",
                          style: TextStyle(fontWeight: FontWeight.w700)),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Checkbox(
                            value: ischecked,
                            onChanged: (value) {
                              setState(() {
                                ischecked = !ischecked;
                              });
                            },
                          ),
                          Text(
                            "Show password",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        "To verify your number,we will send you a text message with a temporary code.Message and data rates may apply.",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 13),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(330, 30),
                              backgroundColor:
                                  Color.fromARGB(255, 235, 182, 48)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => otp_page(),
                                ));
                          },
                          child: Text(
                            "Verify mobile number",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          )),
                      SizedBox(height: 13),
                      Text(
                        "By creating an account or logging in,you agree to Amazon's",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w700),
                      ),
                      Row(
                        children: [
                          Text("Conditions of Use",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 12)),
                          Text(
                            " and",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 12),
                          ),
                          Text(" Privacy Policy.",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ListTile(
              tileColor: _button == Button.signin
                  ? Colors.white
                  : Color.fromARGB(255, 241, 240, 240),
              title: Row(
                children: [
                  Text(
                    "Sign in.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Already a customer?")
                ],
              ),
              leading: Radio(
                activeColor: Color.fromARGB(255, 248, 97, 10),
                value: Button.signin,
                groupValue: _button,
                onChanged: (Button? val) {
                  setState(() {
                    _button = val!;
                  });
                },
              ),
            ),
            if (_button == Button.signin)
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.white,
                child: Form(
                  key: _signupFormkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Email or phone number",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                        ),
                      ),
                      SizedBox(height: 12),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(330, 30),
                              backgroundColor:
                                  Color.fromARGB(255, 235, 182, 48)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => verific_page(),
                                ));
                          },
                          child: Text(
                            "Continue",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          )),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Text(
                            "By continuing,you agree to Amazon's",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w700),
                          ),
                          Text(" Conditions of Use",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 12)),
                          Text(" and")
                        ],
                      ),
                      Text("Privacy Notice",
                          style: TextStyle(color: Colors.blue, fontSize: 12))
                    ],
                  ),
                ),
              ),
            SizedBox(height: 30),
            Center(
              child: Text("Conditions of Use     Privacy Notice     Help",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 6),
            Center(
              child: Text(
                "1996-2023,Amazon.com,inc. or its affiliates",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ));
  }
}
