import 'package:flutter/material.dart';
import 'package:project_amazon/front%20page%202/front_page2.dart';

class FrontPage1 extends StatefulWidget {
  const FrontPage1({super.key});

  @override
  State<FrontPage1> createState() => _FrontPage1State();
}

class _FrontPage1State extends State<FrontPage1> {
  // var _borderColor = Colors.transparent;
  int index1 = 0;
  int selectedContainerIndex = -1;
  void _borderChanger(int index) {
    setState(() {
      selectedContainerIndex = index;
      index1 = index;
    });
  }

  List<String> HeadingLang = [
    "Choose your Language",
    "अपनी भाषा चुनें",
    "உங்கள் மொழியை தேர்வு செய்யவும்",
    "మీ భాషను ఎంచుకోండి",
    "നിങ്ങളുടെ ഭാഷ തിരഞ്ഞെടുക്കുക",
    "ನಿಮ್ಮ ಭಾಷೆಯನ್ನು ಆಯ್ಕೆ ಮಾಡಿ",
    "तुमची भाषा निवडा",
    "আপনার ভাষা নির্বাচন করুন",
  ];

  List<Color> bcolor = [
    Colors.lightBlue,
    Colors.pink,
    Colors.orange,
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.purple,
    Colors.yellow
  ];

  List<Color> _Ccolor = [
    Color(0xffe7f3f7),
    Color(0xfff6e4ee),
    Color(0xfffbf1e7),
    Color(0xffe5f2ee),
    Color(0xfffcf0f0),
    Color(0xffe5ebf6),
    Color(0xfff0e8f6),
    Color(0xfffdf9e3)
  ];

  List<String> Lang = [
    "English",
    "हिंदी",
    "தமிழ்",
    "తెలుగు",
    "മലയാളം",
    "ಕನ್ನಡ",
    "मराठी",
    "বাংলা"
  ];
  // var langIndex = Lang.length;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Icon(Icons.g_translate),
                Text(
                  "${HeadingLang[index1]}",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 400,
            color: Colors.white,
            child: GridView.builder(
              itemCount: 8,
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 20,
                  childAspectRatio: 2),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    _borderChanger(index);
                  },
                  child: Container(
                    child: Stack(
                      children: [
                        Center(
                            child: Text(
                          Lang[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )),
                        Positioned(
                          right: 5,
                          top: 5,
                          child: Icon(
                            Icons.check_circle_rounded,
                            color: index == selectedContainerIndex
                                ? bcolor[index]
                                : Colors.transparent,
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: index == selectedContainerIndex
                              ? bcolor[index]
                              : Colors.transparent,
                          width: 2.0),
                      color: _Ccolor[index],
                    ),
                    height: 40,
                    width: 60,
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              side: BorderSide(
                color: index1 == selectedContainerIndex
                    ? Colors.black
                    : Colors.transparent,
              ),
              backgroundColor: index1 == selectedContainerIndex
                  ? Color.fromARGB(255, 235, 182, 48)
                  : Colors.transparent,
              fixedSize: Size(350, 40),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FrontPage2(),
                  ));
            },
            child: Text(
              "Continue in ${Lang[index1]}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: index1 == selectedContainerIndex
                    ? Colors.black
                    : Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
