import 'package:flutter/material.dart';
import 'button.dart';

////////////// Card for cources ///////////////

class CourceCard extends StatelessWidget {
  CourceCard({
    this.imageLink,
    this.circleText,
    this.onPressed,
    this.widthOfCard,
    this.heightOfCard,
  });
  var imageLink;
  var circleText;
  var onPressed;

  double elevation;
  double widthOfCard;
  double heightOfCard;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Stack(
        children: <Widget>[
          Card(
            elevation: 4,
            color: Colors.white,
            child: Container(
              height: heightOfCard,
              width: widthOfCard,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 75,
                    width: widthOfCard,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image.network(
                        imageLink,
                        fit: BoxFit.cover,
                        loadingBuilder: (BuildContext ctx,
                            Widget child,
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
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("دورة اللغة الأنجليزية",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Tajawal",
                                fontWeight: FontWeight.bold)),
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
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  color: Colors.grey[500],
                                  size: 17,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text("العليا , الرياض",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey[500],
                                        fontFamily: "Tajawal",
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.person,
                                  color: Colors.grey[500],
                                  size: 17,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text("اسم المعلم",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey[500],
                                        fontFamily: "Tajawal",
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 7),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(width: 3,),
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor: Colors.grey[500],
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text("$circleText",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey[500],
                                          fontFamily: "Tajawal",
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(bottom: 13,left: 10,child: Button(borderColor: Colors.black,
            childWidget: Text("220 ريال",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontFamily: "Tajawal",
                    fontWeight: FontWeight.bold)),
          ),)
        ],
      ),
    );
  }
}
