import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_amazon/home_page/home_page_widget/scroll1.dart';
import 'package:project_amazon/home_page/home_page_widget/scroll2.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  List caroImage = [
    Image.asset("assets/caro1.png.jpg"),
    Image.asset("assets/caro2.png.jpg"),
    Image.asset("assets/caro3.png.jpg"),
    Image.asset("assets/caro4.png.jpg"),
    Image.asset("assets/caro5.png.jpg"),
    Image.asset("assets/caro6.png.jpg"),
    Image.asset("assets/caro7.png.jpg"),
    Image.asset("assets/caro8.png.jpg"),
    Image.asset("assets/caro9.png.jpg"),
  ];

  List home2Image = [
    Image.asset("assets/home4.png.jpg", fit: BoxFit.cover),
    Image.asset("assets/home5.png.jpg", fit: BoxFit.cover),
    Image.asset("assets/home6.png.jpg", fit: BoxFit.cover),
    Image.asset("assets/home7.png.jpg", fit: BoxFit.cover),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Stack(children: [
              Container(
                  height: 80,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xff84d8e2), Color(0xffabebd4)],
                  ))),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 40,
                        width: 320,
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search, color: Colors.black),
                            suffixIcon:
                                Icon(Icons.camera_alt, color: Colors.black),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Search Amazon.in",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Colors.black)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                          ),
                        ),
                      ),
                      Icon(Icons.qr_code_scanner, color: Colors.black)
                    ],
                  ),
                ),
              ),
            ]),
            Container(
              height: 587,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      width: double.infinity,
                      color: Color(0xffc3eee7),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            Icon(Icons.location_on),
                            Text("Deliver to Tom - kochi 628123"),
                            Icon(Icons.arrow_drop_down)
                          ],
                        ),
                      ),
                    ),
                    scroll1(),
                    Stack(
                      children: [
                        CarouselSlider.builder(
                            itemCount: caroImage.length,
                            itemBuilder: (BuildContext context, int itemIndex,
                                    int pageViewIndex) =>
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 60),
                                  child: Container(
                                    height: 600,
                                    child: caroImage[itemIndex],
                                  ),
                                ),
                            options: CarouselOptions(
                              height: 300,
                              viewportFraction: 1,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 3),
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              scrollDirection: Axis.horizontal,
                            )),
                        scroll2()
                      ],
                    ),
                    Container(
                        child: Image.asset("assets/home1.png.jpg",
                            fit: BoxFit.cover),
                        height: 200,
                        width: double.infinity,
                        color: Colors.black),
                    SizedBox(height: 10),
                    Container(
                      child: Image.asset(
                        "assets/home2.png.jpg",
                      ),
                      height: 200,
                      width: double.infinity,
                    ),
                    Container(
                      height: 80,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5)),
                            child: home2Image[index],
                            height: 30,
                            width: 80,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
