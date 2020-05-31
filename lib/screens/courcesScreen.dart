import 'package:bottom_navigation_bar/widgets/courseCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourcesScreen extends StatefulWidget {
  @override
  _CourcesScreenState createState() => _CourcesScreenState();
}

class _CourcesScreenState extends State<CourcesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ///////////////////// The Bar ////////////////////////////
          //////////////////////////////////////////////////////////
          Material(
            elevation: 5,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, right: 25, left: 20, bottom: 10),
              child: Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("دوراتي", style: Theme.of(context).textTheme.display2),
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
              ),
            ),
          ),
          ///////////////////// My Cources /////////////////////////
          //////////////////////////////////////////////////////////
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CourceCard(
                    onPressed: () {},
                    circleText: "ورش العمل",
                    imageLink:
                        "https://www.eplaneteducation.com/wp-content/uploads/2017/01/shutterstock_525927418-e1484403654936-840x430.jpg",
                    widthOfCard: MediaQuery.of(context).size.width / 1.15,
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
                    circleText: "ورش العمل",
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
