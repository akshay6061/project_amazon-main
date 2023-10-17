//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:project_amazon/front_page/front_page1.dart';
import 'package:project_amazon/sign%20in%20page/sign%20_in_%20page.dart';

class FrontPage2 extends StatefulWidget {
  const FrontPage2({super.key});

  @override
  State<FrontPage2> createState() => _FrontPage2State();
}

class _FrontPage2State extends State<FrontPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => FrontPage1()));
          },
          icon: Icon(Icons.arrow_back, color: Colors.grey),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
              height: 200,
              width: double.infinity,
              child: Image.asset('assets/amazon.png')),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              "Sign in to your Account",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "View your wish list",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Find & recorder past purchases",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Track your purchases",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signin(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(310, 20),
                        backgroundColor: Color.fromARGB(255, 235, 182, 48)),
                    child: const Text(
                      "Already a customer? Sign in",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(310, 20),
                          backgroundColor: Color.fromARGB(255, 226, 228, 231)),
                      onPressed: () {
                        setState(() {});
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Signin(),
                            ));
                      },
                      child: Text("New to Amazon.in? Create an account",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold))),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(310, 20),
                          backgroundColor: Color.fromARGB(255, 226, 228, 231)),
                      onPressed: () {},
                      child: Text("Skip sign in",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
