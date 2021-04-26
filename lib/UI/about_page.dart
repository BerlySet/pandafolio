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
                      child: buildAbout()),
                  // buildTab2(),
                  // buildTab3(),
                  // Text("Tab1", style: TextStyle(fontSize: 40)),
                  Text("Tab2", style: TextStyle(fontSize: 40)),
                  Text("Tab3", style: TextStyle(fontSize: 40)),
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

  Column buildAbout() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 500,
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
              width: 500,
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
                      Text('berly_set22@apps.ipb.ac.id',
                          style: stylebiasa)
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
                          width: 100,
                          child: Text('Line', style: stylebiasa)),
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
}
