import 'package:bottom_navigation_bar/widgets/courseCard.dart';
import 'package:bottom_navigation_bar/widgets/lecturerCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<Widget> screensOfFav = [
    ///////////////////// First Tap //////////////////////////
    //////////////////////////////////////////////////////////
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 15,
        ),
        CourceCard(
          onPressed: () {},
          circleText: "أونلاين",
          imageLink:
              "https://www.thegreenmonkey.es/wp-content/uploads/2019/01/idiomas_hablan_mundo.jpg",
//    heightOfCard: 177,
          widthOfCard: 350,
        ),
        SizedBox(
          height: 15,
        ),
        CourceCard(
          onPressed: () {},
          circleText: "ورش عمل",
          imageLink:
              "https://www.eplaneteducation.com/wp-content/uploads/2017/01/shutterstock_525927418-e1484403654936-840x430.jpg",
//        heightOfCard: 177,
          widthOfCard: 350,
        ),
      ],
    ),
    ///////////////////// Second Tap /////////////////////////
    //////////////////////////////////////////////////////////
    Column(
      children: <Widget>[
        Padding(
          padding:
              const EdgeInsets.only(bottom: 10, right: 16, left: 16, top: 12),
          child: LecturerCard(),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10, right: 16, left: 16),
          child: LecturerCard(),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10, right: 16, left: 16),
          child: LecturerCard(),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10, right: 16, left: 16),
          child: LecturerCard(),
        ),
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        ////////////////// Appabar & TabBar //////////////////////
        //////////////////////////////////////////////////////////
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Material(
//            elevation: 5,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text("المفضلة",
                          style: Theme.of(context).textTheme.display2),
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
//                Container(color: Colors.grey,height: 2,width: MediaQuery.of(context).size.width,)
              ],
            ),
          ),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text(
                  "دورات",
                  style: Theme.of(context).textTheme.display2,
                ),
              ),
              Tab(
                child: Text(
                  "معلمين",
                  style: Theme.of(context).textTheme.display2,
                ),
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.grey[100],
          child: TabBarView(
            children: screensOfFav,
          ),
        ),
      ),
    );
  }
}
