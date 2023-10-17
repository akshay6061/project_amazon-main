import 'package:flutter/material.dart';

class scroll2 extends StatefulWidget {
  const scroll2({super.key});

  @override
  State<scroll2> createState() => _scroll2State();
}

class _scroll2State extends State<scroll2> {
  List scrollImage = [
    Image.asset("assets/scroll2.png.jpg", fit: BoxFit.cover),
    Image.asset("assets/scroll3.png.jpg", fit: BoxFit.cover),
    Image.asset("assets/scroll4.png.jpg", fit: BoxFit.cover),
    Image.asset("assets/scroll5.png.jpg", fit: BoxFit.cover),
    Image.asset("assets/scroll6.png.jpg", fit: BoxFit.cover),
    Image.asset("assets/scroll7.png.jpg", fit: BoxFit.cover),
    Image.asset("assets/scroll8.png.jpg", fit: BoxFit.cover),
    Image.asset("assets/scroll9.png.jpg", fit: BoxFit.cover),
    Image.asset("assets/scroll10.png.jpg", fit: BoxFit.cover),
    Image.asset("assets/scroll11.png.jpg", fit: BoxFit.cover),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 228),
      child: Container(
        height: 180,
        width: 500,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: scrollImage.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              child: scrollImage[index],
              height: 16,
              width: 128,
            ),
          ),
        ),
      ),
    );
  }
}
