import 'package:flutter/material.dart';

void main() => runApp(MyApp());

const primaryColor = Color(0xff262730);
const secondaryColor = Color(0xff4a4dce);
const accentTone = Color(0xFFD5D8D6);
const tone = Color(0xff303030);
const textColor = Colors.white;
const appBarTitle = TextStyle(
    color: primaryColor,
    fontSize: 24,
    fontFamily: 'MADE',
    fontWeight: FontWeight.bold);
const darkBodyText = TextStyle(
    fontWeight: FontWeight.w700,
    fontFamily: 'Milliard',
    fontSize: 16,
    letterSpacing: 0.45,
    color: primaryColor);
const iconSize = 36.0;
const appbaricon = 32.0;
const profileDetailsText = TextStyle(
  fontSize: 17,
  letterSpacing: 0.75,
  fontFamily: 'LT Amber',
  fontWeight: FontWeight.w300,
);
const usernameText = TextStyle(
    fontFamily: 'LT Amber',
    fontSize: 18.0,
    fontWeight: FontWeight.normal,
    letterSpacing: .6,
    color: accentTone);
const nameText = TextStyle(
    fontFamily: 'Milliard',
    fontSize: 23.0,
    fontWeight: FontWeight.w700,
    color: textColor);
const heading = TextStyle(
    fontFamily: 'Milliard',
    fontSize: 22.0,
    fontWeight: FontWeight.w700,
    color: primaryColor);
const body = TextStyle(
    fontFamily: 'Milliard',
    fontSize: 19.0,
    height: 1.55,
    letterSpacing: 0.4,
    fontWeight: FontWeight.w300,
    color: textColor);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
      ),
      home: Portfolio(),
    );
  }
}

void onPressed() {
  print('Press Detected');
}

class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(
                Icons.search_sharp,
                color: primaryColor,
                size: appbaricon,
              ),
              tooltip: 'Find a software developer',
              onPressed: null)
        ],
        backgroundColor: Colors.white,
        elevation: 2,
        leading: Icon(
          Icons.laptop_mac_outlined,
          color: primaryColor,
          size: appbaricon,
        ),
        title: Text(
          'DevFindr ',
          style: appBarTitle,
        ),
        titleSpacing: 0,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [
                  0.02,
                  0.15,
                ],
                colors: [
                  Color(0xff262730),
                  Color(0xff1B1C22),
                ]),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 30, 24, 0),
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.white,
                        backgroundImage:
                            AssetImage('assets/images/profile_image.jpg'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 13,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "@asquarebubble",
                            style: usernameText,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Timilehin Ife Joseph",
                            style: nameText,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 2.0,
                              color: accentTone,
                              style: BorderStyle.solid),
                        ),
                        height: 68,
                        width: 68,
                        child: Center(
                          child: Icon(
                            Icons.mail_outline_sharp,
                            color: accentTone,
                            size: 22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(top: 14, left: 24, right: 24),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 20,
                              color: accentTone,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              'Akure, Nigeria',
                              style: profileDetailsText,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.mail_outline_sharp,
                              size: 20,
                              color: accentTone,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              'ife@spawtar.com',
                              style: profileDetailsText,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.remove_red_eye_outlined,
                              size: 20,
                              color: accentTone,
                            ),
                            SizedBox(
                              width: 02,
                            ),
                            Text(
                              '184',
                              style: profileDetailsText,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Divider(
                        height: 10,
                        color: Colors.white30,
                      ),
                      Expanded(
                        flex: 7,
                        child: Container(
                          margin: EdgeInsets.only(top: 0),
                          child: Text(
                            'Interested in creating effective low-cost solutions for small businesses, low income earners and the underserved.',
                            style: body,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                    color: textColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36.0),
                      topRight: Radius.circular(36.0),
                    ),
                  ),
                  margin: EdgeInsets.only(top: 55),
                  height: double.maxFinite,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 0, 24, 10),
                          child: Row(
                            children: [
                              Text(
                                "LANGUAGES & TOOLS",
                                style: heading,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 24, right: 24, top: 15, bottom: 25),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 1.0,
                                            color: tone,
                                            style: BorderStyle.solid),
                                      ),
                                      height: 64,
                                      width: 64,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image(
                                            width: iconSize,
                                            height: iconSize,
                                            image: AssetImage(
                                                'assets/images/css.png'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 1.0,
                                            color: tone,
                                            style: BorderStyle.solid),
                                      ),
                                      height: 64,
                                      width: 64,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image(
                                            width: iconSize,
                                            height: iconSize,
                                            image: AssetImage(
                                                'assets/images/html_icon.png'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 1.0,
                                            color: tone,
                                            style: BorderStyle.solid),
                                      ),
                                      height: 64,
                                      width: 64,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image(
                                            width: iconSize,
                                            height: iconSize,
                                            image: AssetImage(
                                                'assets/images/dart2.jpg'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 1.0,
                                            color: tone,
                                            style: BorderStyle.solid),
                                      ),
                                      height: 64,
                                      width: 64,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image(
                                            width: iconSize,
                                            height: iconSize,
                                            image: AssetImage(
                                                'assets/images/elementorIcon.png'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(24, 0, 24, 0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 1.0,
                                            color: tone,
                                            style: BorderStyle.solid),
                                      ),
                                      height: 64,
                                      width: 64,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image(
                                            width: iconSize,
                                            height: iconSize,
                                            image: AssetImage(
                                                'assets/images/figma.png'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 1.0,
                                            color: tone,
                                            style: BorderStyle.solid),
                                      ),
                                      height: 64,
                                      width: 64,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image(
                                            width: iconSize,
                                            height: iconSize,
                                            image: AssetImage(
                                                'assets/images/Wplogo2.png'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 1.0,
                                            color: tone,
                                            style: BorderStyle.solid),
                                      ),
                                      height: 64,
                                      width: 64,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image(
                                            width: iconSize,
                                            height: iconSize,
                                            image: AssetImage(
                                                'assets/images/FlutterLogo2.png'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 1.0,
                                            color: tone,
                                            style: BorderStyle.solid),
                                      ),
                                      height: 64,
                                      width: 64,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image(
                                            width: iconSize,
                                            height: iconSize,
                                            image: AssetImage(
                                                'assets/images/shopify.png'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Browse my projects',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontFamily: 'LT Amber',
                                        letterSpacing: .75,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color(0xffB6244F),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(16.0),
                                      )),
                                  height: double.infinity,
                                  margin: EdgeInsets.only(
                                      left: 24, top: 32, right: 24, bottom: 20),
                                  width: double.infinity,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
