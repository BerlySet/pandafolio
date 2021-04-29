import 'dart:js';

import 'package:flutter/material.dart';
import 'package:pandafolio/models/constant.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Stack(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.40,
            color: blueLow,
            child: Center(
              child: Column(
                children: [
                  buildName(),
                  SizedBox(
                    width: 423,
                    child: buildTabBar(),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: blueMid),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.65,
              child: TabBarView(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(10),
                      color: Colors.red,
                      child: buildAbout(context)),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(10),
                      child: buildResume(context)),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(10),
                      child: buildProject(context)),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }

  Container buildName() {
    return Container(
      margin: EdgeInsets.all(40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: 80,
              width: 80,
              child: Image(
                image: AssetImage('assets/avatar.png'),
                fit: BoxFit.cover,
              )),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            child: Text(
              'Berly Setiawan',
              style: TextStyle(
                  color: textBlack,
                  fontSize: bigFontSize,
                  fontWeight: FontWeight.w800),
            ),
          ),
        ],
      ),
    );
  }

  TabBar buildTabBar() {
    return TabBar(
      tabs: [
        Tab(
          child: Text(
            "About Me",
            style: TextStyle(
                color: textBlack,
                fontSize: medFontSize,
                fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            "Resume",
            style: TextStyle(
                color: textBlack,
                fontSize: medFontSize,
                fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            "Project",
            style: TextStyle(
                color: textBlack,
                fontSize: medFontSize,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Column buildProject(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                        color: textWhite,
                        fontSize: medFontSize,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: 100, child: Text('Bio', style: stylebiasa)),
                      Text('Computer Science Student’s who loves tempe orek',
                          style: stylebiasa)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: 100, child: Text('Age', style: stylebiasa)),
                      Text('20 years old', style: stylebiasa)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: 100,
                          child: Text('Address', style: stylebiasa)),
                      Text('Veteran Street, South Bekasi', style: stylebiasa)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact',
                    style: TextStyle(
                        color: textWhite,
                        fontSize: medFontSize,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: 100, child: Text('Email', style: stylebiasa)),
                      Text('berly_set22@apps.ipb.ac.id', style: stylebiasa)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: 100,
                          child: Text('Phone/WA', style: stylebiasa)),
                      Text('+62-895-0715-3745', style: stylebiasa)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: 100, child: Text('Line', style: stylebiasa)),
                      Text('berly_st2120', style: stylebiasa)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.6,
          margin: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildBox(context, 'Projects Done', '7 Projects',
                  'assets/projectdone.png'),
              buildBox(
                  context, 'Points Earned', '150 Points', 'assets/star.png'),
              buildBox(context, 'Skills', '2.5/5 stars', 'assets/skill.png'),
              buildBox(
                  context, 'Experiences', '2 years', 'assets/thumbsup.png'),
            ],
          ),
        ),
      ],
    );
  }

  Container buildBox(
      BuildContext context, String title, String desc, String loc) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            width: 140,
            height: 115,
            decoration: BoxDecoration(color: blueLow),
            child: Image.asset(
              loc,
              fit: BoxFit.contain,
              height: 10,
              width: 10,
            ),
            // child: Image(
            //   image: AssetImage('assets/icon_projectdone.png'), fit: BoxFit.contain, height: 140,
            // ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
                color: textWhite, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(desc, style: stylebiasa),
        ],
      ),
    );
  }
}

Column buildResume(BuildContext context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Skills',
                      style: TextStyle(
                          color: textWhite,
                          fontSize: medFontSize,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                            width: 200, child: Text('Dart', style: stylebiasa)),
                        Image(
                          image: AssetImage('assets/stars3.png'),
                          width: 100,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                            width: 200,
                            child: Text('Mobile Apps Development',
                                style: stylebiasa)),
                        Image(
                          image: AssetImage('assets/stars25.png'),
                          width: 100,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                            width: 200, child: Text('Java', style: stylebiasa)),
                        Image(
                          image: AssetImage('assets/stars2.png'),
                          width: 100,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                            width: 200, child: Text('HTML', style: stylebiasa)),
                        Image(
                          image: AssetImage('assets/stars15.png'),
                          width: 100,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.2,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                color: Colors.red,
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            color: Colors.amber,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Contact',
                  style: TextStyle(
                      color: textWhite,
                      fontSize: medFontSize,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                        width: 100, child: Text('Email', style: stylebiasa)),
                    Text('berly_set22@apps.ipb.ac.id', style: stylebiasa)
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                        width: 100, child: Text('Phone/WA', style: stylebiasa)),
                    Text('+62-895-0715-3745', style: stylebiasa)
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                        width: 100, child: Text('Line', style: stylebiasa)),
                    Text('berly_st2120', style: stylebiasa)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}

Column buildAbout(BuildContext context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [Text('Filter Berdasarkan'), SizedBox(width: 20,) ,Text('ini dropdown'), ],
      ),
      SizedBox(height: 20,),
      // card 1
    ],
  );
}
