import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserAccountScreen extends StatefulWidget {
  @override
  _UserAccountScreenState createState() => _UserAccountScreenState();
}

class _UserAccountScreenState extends State<UserAccountScreen> {
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
                    Text("حسابي", style: Theme.of(context).textTheme.display2),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          height: 22,
                          width: 22,
                          child: Image.asset("assets/icons/messenger.png"),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Stack(
                          children: <Widget>[
                            IconButton(
                              icon: SizedBox(
                                width: 22,
                                height: 22,
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
          ),
          ////////////////// My Account Settings ///////////////////
          //////////////////////////////////////////////////////////
          Padding(
            padding: const EdgeInsets.all(15),
            child: CircleAvatar(
              radius: 42,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 41,
                backgroundColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child:
                Text("محمود مرعي", style: Theme.of(context).textTheme.display3),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Mahmoud@example.com",
                  style: Theme.of(context).textTheme.display3),
              SizedBox(
                width: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: SizedBox(
                  height: 16,
                  width: 16,
                  child: Image.asset("assets/icons/email.png"),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 1.45,
              height: 33,
              child: MaterialButton(
                elevation: 1,
                child: Text("كن معلم",
                    style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 18,
                        color: Colors.grey[500])),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Colors.black87),
                    borderRadius: BorderRadius.circular(8)),
//              color: backgroundColor,
                padding: EdgeInsets.all(5),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25, left: 25, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("إعدادات",
                        style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 18,
                            color: Colors.grey[500])),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("أمن الحساب",
                          style: Theme.of(context).textTheme.display3),
                      Icon(
                        Icons.arrow_back_ios,
                        textDirection: TextDirection.ltr,
                        size: 19,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: <Widget>[
                    Text("الدعم",
                        style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 18,
                            color: Colors.grey[500])),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("عن التطبيق",
                          style: Theme.of(context).textTheme.display3),
                      Icon(
                        Icons.arrow_back_ios,
                        textDirection: TextDirection.ltr,
                        size: 19,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("اتصل بنا",
                          style: Theme.of(context).textTheme.display3),
                      Icon(
                        Icons.arrow_back_ios,
                        textDirection: TextDirection.ltr,
                        size: 19,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("سياسة الخصوصية",
                          style: Theme.of(context).textTheme.display3),
                      Icon(
                        Icons.arrow_back_ios,
                        textDirection: TextDirection.ltr,
                        size: 19,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("الشروط و الأحكام",
                          style: Theme.of(context).textTheme.display3),
                      Icon(
                        Icons.arrow_back_ios,
                        textDirection: TextDirection.ltr,
                        size: 19,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("مشاركة التطبيق",
                          style: Theme.of(context).textTheme.display3),
                      Icon(
                        Icons.arrow_back_ios,
                        textDirection: TextDirection.ltr,
                        size: 19,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset(
                        "assets/icons/power.png",
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: InkWell(
                        onTap: () {},
                        child: Text("تسجيل خروج",
                            style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 18,
                                color: Colors.red)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
