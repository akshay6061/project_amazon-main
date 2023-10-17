import 'package:flutter/material.dart';

class otp_page extends StatefulWidget {
  const otp_page({super.key});

  @override
  State<otp_page> createState() => _otp_pageState();
}

class _otp_pageState extends State<otp_page> {
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
              "Verify mobile number",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "IN +91 9783176290",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  "( Change )",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(height: 15),
            Text(
                "A SMS with a One Time Password (OTP) has been sent to the number above."),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter OTP",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(350, 30),
                    backgroundColor: Color.fromARGB(255, 235, 182, 48)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => otp_page(),
                      ));
                },
                child: Text(
                  "Create your Amazon account",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                )),
            SizedBox(height: 13),
            Text(
              "By creating an account or logging in,you agree to Amazon's",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
            ),
            Row(children: [
              Text("Conditions of Use",
                  style: TextStyle(color: Colors.blue, fontSize: 12)),
              Text(
                " and",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
              ),
              Text(" Privacy Policy.",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                      fontWeight: FontWeight.w700)),
            ]),
            SizedBox(height: 13),
            TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.arrow_right_outlined, size: 30),
                hintText: "Resent OTP",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
              ),
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
