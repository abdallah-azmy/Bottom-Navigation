import 'package:bottom_navigation_bar/widgets/button.dart';
import 'package:bottom_navigation_bar/widgets/courseCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> images = [
    "https://www.nimbleinformatics.com/wp-content/uploads/2019/02/importance-of-content-writing-for-seo.jpg",
    "https://interfacealaska.com/wp-content/uploads/2019/08/design.jpg",
    "https://dustinstout.com/wp-content/uploads/2016/01/write-for-someone-1920x1080-feature.jpg",
    "https://ak.picdn.net/shutterstock/videos/8914681/thumb/12.jpg",
    "https://www.cyberhelpindia.com/blogs/wp-content/uploads/2016/09/944772.jpg",
    "https://ak.picdn.net/shutterstock/videos/3107938/thumb/1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ///////////////////// The images container ////////////////
            //////////////////////////////////////////////////////////
            Container(
              height: 140,
              child: Stack(
                children: <Widget>[
                  Swiper(
                    itemCount: 6,
                    pagination: SwiperPagination(),
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Image.network(
                              images[index],
                              fit: BoxFit.fitWidth,
                              loadingBuilder: (BuildContext ctx, Widget child,
                                  ImageChunkEvent loadingProgress) {
                                if (loadingProgress == null) {
                                  return child;
                                } else {
                                  return Center(
                                    child: SizedBox(
                                        height: 30,
                                        width: 30,
                                        child: Image.asset(
                                            "assets/icons/loading.gif")),
                                  );
                                }
                              },
                            ),
                          ),
                          Positioned(
                            top: 28,
                            right: 23,
                            child: Text(
                              "دورة التصميم",
                              style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontSize: 21,
                                  color: Colors.white),
                            ),
                          ),
                          Positioned(
                            top: 60,
                            right: 23,
                            child: Row(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                        height: 13,
                                        width: 13,
                                        child: Image.asset(
                                            "assets/icons/star2.png")),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Container(
                                        height: 13,
                                        width: 13,
                                        child: Image.asset(
                                            "assets/icons/star2.png")),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Container(
                                        height: 13,
                                        width: 13,
                                        child: Image.asset(
                                            "assets/icons/star2.png")),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Container(
                                        height: 13,
                                        width: 13,
                                        child: Image.asset(
                                            "assets/icons/star2.png")),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Container(
                                        height: 13,
                                        width: 13,
                                        child: Image.asset(
                                            "assets/icons/star1.png")),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 7),
                                  child: Text(
                                    "(15)",
                                    style: TextStyle(
                                        color: Colors.grey[500],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 85,
                            right: 23,
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "89 ر.س",
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Tajawal',
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  "99 ر.س",
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: Colors.grey[500],
                                      fontSize: 11),
                                ),
                              ],
                            ),
                          )
                        ],
                      );
                    },
                  ),
                  Positioned(
                    left: 11,
                    top: 7,
                    child: Stack(
                      children: <Widget>[
                        IconButton(
                          icon: SizedBox(
                            width: 18,
                            height: 19,
                            child: Image.asset(
                              "assets/icons/shopping.png",
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {},
                        ),
                        Positioned(
                          right: 11,
                          top: 12,
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.red,
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 50,
                    top: 7,
                    child: Stack(
                      children: <Widget>[
                        IconButton(
                          icon: SizedBox(
                            width: 20,
                            height: 20,
                            child: Image.asset(
                              "assets/icons/bell.png",
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {},
                        ),
                        Positioned(
                          right: 11,
                          top: 12,
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.red,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            ///////////////////// Sections ///////////////////////////
            //////////////////////////////////////////////////////////
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 30, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "الأقسام",
                      style: Theme.of(context).textTheme.display2,
                    ),
                  ),
//                  SizedBox(width: MediaQuery.of(context).size.width/2,),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "مشاهدة الكل",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Tajawal",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Button(
                                backgroundColor: Colors.white,
                                borderColor: Colors.white,
                                textColor: Colors.black,
                                elevation: 4,
                                childWidget: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 3, bottom: 3),
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 25,
                                        height: 25,
                                        child: Image.asset(
                                            "assets/icons/design.png"),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "التصميم",
                                        style: Theme.of(context)
                                            .textTheme
                                            .display1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Button(
                                backgroundColor: Colors.white,
                                borderColor: Colors.white,
                                textColor: Colors.black,
                                elevation: 4,
                                childWidget: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 3, bottom: 3),
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 21,
                                        height: 21,
                                        child: Image.asset(
                                            "assets/icons/accounting.png"),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "المحاسبة",
                                        style: Theme.of(context)
                                            .textTheme
                                            .display1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Button(
                                backgroundColor: Colors.white,
                                borderColor: Colors.white,
                                textColor: Colors.black,
                                elevation: 4,
                                childWidget: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 3, bottom: 3),
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 22,
                                        height: 22,
                                        child: Image.asset(
                                            "assets/icons/translation.png"),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "اللغات والترجمة",
                                        style: Theme.of(context)
                                            .textTheme
                                            .display1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Button(
                                backgroundColor: Colors.white,
                                borderColor: Colors.white,
                                textColor: Colors.black,
                                elevation: 4,
                                childWidget: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 3, bottom: 3),
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 22,
                                        height: 22,
                                        child:
                                            Image.asset("assets/icons/art.png"),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "فنون",
                                        style: Theme.of(context)
                                            .textTheme
                                            .display1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Button(
                                backgroundColor: Colors.white,
                                borderColor: Colors.white,
                                textColor: Colors.black,
                                elevation: 4,
                                childWidget: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15, top: 3, bottom: 3),
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 22,
                                        height: 22,
                                        child: Image.asset(
                                            "assets/icons/programming.png"),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "البرمجة",
                                        style: Theme.of(context)
                                            .textTheme
                                            .display1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Button(
                                backgroundColor: Colors.white,
                                borderColor: Colors.white,
                                textColor: Colors.black,
                                elevation: 4,
                                childWidget: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 3, bottom: 3),
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 25,
                                        height: 25,
                                        child: Image.asset(
                                            "assets/icons/cooking.png"),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "الطبخ",
                                        style: Theme.of(context)
                                            .textTheme
                                            .display1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Button(
                                backgroundColor: Colors.white,
                                borderColor: Colors.white,
                                textColor: Colors.black,
                                elevation: 4,
                                childWidget: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 3, bottom: 3),
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 22,
                                        height: 22,
                                        child: Image.asset(
                                            "assets/icons/speak.png"),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "التخاطب",
                                        style: Theme.of(context)
                                            .textTheme
                                            .display1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Button(
                                backgroundColor: Colors.white,
                                borderColor: Colors.white,
                                textColor: Colors.black,
                                elevation: 4,
                                childWidget: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 3, bottom: 3),
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 22,
                                        height: 22,
                                        child: Image.asset(
                                            "assets/icons/math.png"),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "الرياضيات",
                                        style: Theme.of(context)
                                            .textTheme
                                            .display1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ///////////////////// Most Rating ////////////////////////
            //////////////////////////////////////////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    right: 30,
                  ),
                  child: Text(
                    "الأكثر تقييماً",
                    style: Theme.of(context).textTheme.display2,
                  ),
                ),
              ],
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(top: 12, right: 26),
                      child: CourceCard(
                        onPressed: () {},
                        circleText: "أونلاين",
                        imageLink:
                            "https://www.eplaneteducation.com/wp-content/uploads/2017/01/shutterstock_525927418-e1484403654936-840x430.jpg",
                        heightOfCard: 177,
                        widthOfCard: 245,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, right: 15),
                    child: CourceCard(
                      onPressed: () {},
                      circleText: "ورش عمل",
                      imageLink:
                          "https://www.eplaneteducation.com/wp-content/uploads/2017/01/shutterstock_525927418-e1484403654936-840x430.jpg",
                      heightOfCard: 177,
                      widthOfCard: 245,
                    ),
                  )
                ],
              ),
            ),
            ///////////////////// Online Cources /////////////////////
            //////////////////////////////////////////////////////////

            Padding(
              padding: const EdgeInsets.only(right: 30, top: 20, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "الدورات الأونلاين",
                      style: Theme.of(context).textTheme.display2,
                    ),
                  ),
//                  SizedBox(width: MediaQuery.of(context).size.width/2,),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "مشاهدة الكل",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Tajawal",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(top: 12, right: 26),
                      child: CourceCard(
                        onPressed: () {},
                        circleText: "أونلاين",
                        imageLink:
                            "https://www.thegreenmonkey.es/wp-content/uploads/2019/01/idiomas_hablan_mundo.jpg",
                        heightOfCard: 177,
                        widthOfCard: 245,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, right: 15),
                    child: CourceCard(
                      onPressed: () {},
                      circleText: "ورش عمل",
                      imageLink:
                          "https://www.thegreenmonkey.es/wp-content/uploads/2019/01/idiomas_hablan_mundo.jpg",
                      heightOfCard: 177,
                      widthOfCard: 245,
                    ),
                  )
                ],
              ),
            ),

            ///////////////////// Working Workshops //////////////////
            //////////////////////////////////////////////////////////

            Padding(
              padding: const EdgeInsets.only(right: 30, top: 20, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "ورش العمل",
                      style: Theme.of(context).textTheme.display2,
                    ),
                  ),
//                  SizedBox(width: MediaQuery.of(context).size.width/2,),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "مشاهدة الكل",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Tajawal",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(top: 12, right: 26),
                      child: CourceCard(
                        onPressed: () {},
                        circleText: "أونلاين",
                        imageLink:
                            "https://www.eplaneteducation.com/wp-content/uploads/2017/01/shutterstock_525927418-e1484403654936-840x430.jpg",
                        heightOfCard: 177,
                        widthOfCard: 245,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, right: 15),
                    child: CourceCard(
                      onPressed: () {},
                      circleText: "ورش عمل",
                      imageLink:
                          "https://www.eplaneteducation.com/wp-content/uploads/2017/01/shutterstock_525927418-e1484403654936-840x430.jpg",
                      heightOfCard: 177,
                      widthOfCard: 245,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
