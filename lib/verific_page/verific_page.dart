import 'package:flutter/material.dart';
import 'package:project_amazon/home_page/home_page.dart';

class verific_page extends StatefulWidget {
  const verific_page({super.key});

  @override
  State<verific_page> createState() => _verific_pageState();
}

class _verific_pageState extends State<verific_page> {
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
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Text(
              "Enter varification code",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
                "For your Security,we have sent the code to your phone ***_***_**90."),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Resend code",
              style: TextStyle(color: Color.fromARGB(255, 5, 143, 136)),
            ),
            SizedBox(height: 18),
            Row(
              children: [
                Icon(
                  Icons.info_rounded,
                  color: Color.fromARGB(255, 3, 165, 157),
                ),
                Text("Please wait 1 min before requesting another code.")
              ],
            ),
            SizedBox(height: 12),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(350, 30),
                    backgroundColor: Color.fromARGB(255, 235, 182, 48)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => home_page(),
                      ));
                },
                child: Text(
                  "Submit code",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                )),
            SizedBox(height: 20),
            Text(
              "Verify another way",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
            SizedBox(height: 5),
            Text(
              "Approve the notification sent to your Amazon app",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 10),
            ),
            SizedBox(height: 18),
            Text(
              "Need help?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
            SizedBox(height: 5),
            Text(
              "if you cannot receive the code or if you chnaged your email or phone number,",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 10),
            ),
            Text(
              "try a diiferent way.",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 10),
            ),
            SizedBox(height: 50),
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
          ]),
        ));
  }
}
