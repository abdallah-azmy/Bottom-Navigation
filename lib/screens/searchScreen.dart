import 'package:bottom_navigation_bar/widgets/courseCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ///////////////////// Top Bar ////////////////////////////
          //////////////////////////////////////////////////////////
          Material(
            elevation: 5,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, right: 25, left: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 1.7,
                    child: TextField(
                      onChanged: (text) {},
                      decoration: InputDecoration(
                        hintText: 'ابحث باسم الدورة او باسم المعلم',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Tajawal",
                          fontSize: 13.0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                          onPressed: () {},
                          icon: SizedBox(
                            height: 32,
                            width: 32,
                            child: Image.asset(
                              "assets/icons/sales.png",
                              color: Colors.black,
                            ),
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      Stack(
                        children: <Widget>[
                          IconButton(
                            icon: SizedBox(
                              width: 23,
                              height: 23,
                              child: Image.asset(
                                "assets/icons/shopping.png",
                                color: Colors.black,
                              ),
                            ),
                            onPressed: () {},
                          ),
                          Positioned(
                            right: 5,
                            top: 11,
                            child: CircleAvatar(
                              radius: 6,
                              backgroundColor: Colors.red,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ///////////////////// Searching Results //////////////////
          //////////////////////////////////////////////////////////
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 10, right: 17),
                child: Row(
                  children: <Widget>[
                    Text("نتائج البحث",
                        style: Theme.of(context).textTheme.display2),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CourceCard(
                    onPressed: () {},
                    circleText: "أونلاين",
                    imageLink:
                        "https://www.eplaneteducation.com/wp-content/uploads/2017/01/shutterstock_525927418-e1484403654936-840x430.jpg",
//                  heightOfCard: 160,
                    widthOfCard: MediaQuery.of(context).size.width / 1.15,
//                  heightOfCard: 200,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CourceCard(
                    onPressed: () {},
                    circleText: "أونلاين",
                    imageLink:
                        "https://www.thegreenmonkey.es/wp-content/uploads/2019/01/idiomas_hablan_mundo.jpg",
//                  heightOfCard: 160,
                    widthOfCard: MediaQuery.of(context).size.width / 1.15,
//                  heightOfCard: 200,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
