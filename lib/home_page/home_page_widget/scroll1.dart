import 'package:flutter/material.dart';

class scroll1 extends StatefulWidget {
  const scroll1({super.key});

  @override
  State<scroll1> createState() => _scroll1State();
}

class _scroll1State extends State<scroll1> {
  List homeImage = [
    Image.asset("assets/logo2.png.jpg", fit: BoxFit.fill),
    Image.asset("assets/logo3.png.jpg", fit: BoxFit.fill),
    Image.asset("assets/logo4.png.jpg", fit: BoxFit.fill),
    Image.asset("assets/logo5.png.jpg", fit: BoxFit.fill),
    Image.asset("assets/logo6.png.jpg", fit: BoxFit.fill),
    Image.asset("assets/logo7.png.jpg", fit: BoxFit.fill),
    Image.asset("assets/logo8.png.jpg", fit: BoxFit.fill),
    Image.asset("assets/logo9.png.jpg", fit: BoxFit.fill),
    Image.asset("assets/logo10.png.jpg", fit: BoxFit.fill),
    Image.asset("assets/logo11.png.jpg", fit: BoxFit.fill),
    Image.asset("assets/logo12.png.jpg", fit: BoxFit.fill),
    Image.asset("assets/logo13.png.jpg", fit: BoxFit.fill),
    Image.asset("assets/logo14.png.jpg", fit: BoxFit.fill),
    Image.asset("assets/logo15.png.jpg", fit: BoxFit.fill),
    Image.asset("assets/logo16.png.jpg", fit: BoxFit.fill),
    Image.asset("assets/logo17.png.jpg", fit: BoxFit.fill)
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: homeImage.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                child: homeImage[index],
                height: 30,
                width: 50,
              ),
            ),
          ),
        )
      ],
    );
  }
}
