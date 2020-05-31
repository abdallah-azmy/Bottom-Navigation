import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

////////////// Card for lecturer ///////////////

class LecturerCard extends StatelessWidget {
  LecturerCard({
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
      child: Card(
        elevation: 4,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 7),
                child: CircleAvatar(
                  radius: 33,
                  backgroundColor: Colors.blueGrey,
                  child: ClipOval(
                    child: SizedBox(
                      height: 70,
                      width: 80,
                      child: Image.asset("assets/images/teacher.jpg",
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: Text("د.محمود محمد",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Tajawal",
                          fontSize: 16.0,
                        )),
                  ),
                  SizedBox(
                    height: 9,
                  ),
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
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 66, bottom:9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                      width: 15,
                      child: Image.asset("assets/icons/redHeart.png"),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                            height: 13,
                            width: 13,
                            child: Image.asset("assets/icons/star2.png")),
                        SizedBox(
                          width: 3,
                        ),
                        Container(
                            height: 13,
                            width: 13,
                            child: Image.asset("assets/icons/star2.png")),
                        SizedBox(
                          width: 3,
                        ),
                        Container(
                            height: 13,
                            width: 13,
                            child: Image.asset("assets/icons/star2.png")),
                        SizedBox(
                          width: 3,
                        ),
                        Container(
                            height: 13,
                            width: 13,
                            child: Image.asset("assets/icons/star2.png")),
                        SizedBox(
                          width: 3,
                        ),
                        Container(
                            height: 13,
                            width: 13,
                            child: Image.asset("assets/icons/star1.png")),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
