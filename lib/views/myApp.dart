import 'package:ewallet/component/SingleSelect.dart';
import 'package:ewallet/component/colors.dart';
import 'package:ewallet/widgets/underlined_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: height * 0.35,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/background.png"),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: height * 0.1275,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/curve.png"))),
                  ),
                ),
                Positioned(
                  left: width * 0.59,
                  right: 0,
                  bottom: 8,
                  child: GestureDetector(
                    onTap: (){
                      showModalBottomSheet<dynamic>(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          context: context, builder: (BuildContext bc){
                        return Container(
                          height: height-170,
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  height: height - 200,
                                  width: width,
                                  decoration: BoxDecoration(
                                    borderRadius: new BorderRadius.only(
                                        topLeft: const Radius.circular(30.0),
                                        topRight: const Radius.circular(30.0)),
                                    color: Colors.blue.withOpacity(0.9),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: height * 0.01),
                                        height: height * 0.003,
                                        width: width * 0.1,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(height * 0.01),
                                          color: Colors.white,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: height * 0.01),
                                          child: Text(
                                            "Audio courses And\nReading Books",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                          ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                        ),
                                        margin: EdgeInsets.only(top: height * 0.015),
                                        width: width * 0.85,
                                        height: height * 0.06,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            fillColor: Colors.white,
                                            hintText: "1. Purchase a course separately",
                                            hintStyle: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                              fontFamily: "poppins",
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(20),
                                              borderSide: BorderSide(color: Colors.white),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.white),
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height *  0.01,
                                      ),
                                      Text("or",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                        ),
                                        margin: EdgeInsets.only(top: height * 0.01),
                                        width: width * 0.85,
                                        height: height * 0.53,
                                        child: Container(
                                          margin: EdgeInsets.only(top: height * 0.02, left: width * 0.035),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("2. Subscription",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                fontFamily: "poppins",
                                              ),
                                              ),
                                              SizedBox(height: height * 0.02,),
                                              Text("All audio course and book clubs can play during the subscription period",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 13,
                                                  fontFamily: "poppins",
                                                ),
                                              ),
                                              SizedBox(height: height * 0.02,),
                                              RadioButtonSingleWidget(),
                                              Center(
                                                child: Text("7 days free, then \$10/month until cancelled",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 10,
                                                    fontFamily: "poppins",
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(right: width * 0.03, top: height * 0.01),
                                                width: width * 0.8,
                                                height: height * 0.07,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20),
                                                  color: Colors.greenAccent
                                                ),
                                                child: MaterialButton(
                                                  // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                  shape: StadiumBorder(),
                                                  child: Text(
                                                    'Try For Free',
                                                    style: TextStyle(color: Colors.white, fontSize: 17, fontFamily: "poppins"),
                                                  ),
                                                  onPressed: () {
                                                  },
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(top: height * 0.01),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "Please see our",
                                                          style: TextStyle(
                                                            fontSize: 10,
                                                            fontFamily: 'poppins',
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        InkWell(
                                                          onTap: () {
                                                            showDialog(
                                                              context: context,
                                                              builder: (BuildContext context) {
                                                                return AlertDialog(
                                                                  backgroundColor:
                                                                  AppColor.bottomNavBg,
                                                                  title: Text(
                                                                    "Help protect your website and its users"
                                                                        "with clear and fair website terms and conditions."
                                                                        "These terms and conditions for a website set out.",
                                                                  ),
                                                                  titleTextStyle: TextStyle(
                                                                    fontFamily: "Poppins",
                                                                    fontSize: 15,
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                          child: Text(
                                                            " Terms of Use",
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontFamily: 'poppins',
                                                              color: AppColor.green,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          " and",
                                                          style: TextStyle(
                                                            fontSize: 10,
                                                            fontFamily: 'poppins',
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        InkWell(
                                                          onTap: () {
                                                            showDialog(
                                                              context: context,
                                                              builder: (BuildContext context) {
                                                                return AlertDialog(
                                                                  backgroundColor: Colors.greenAccent,
                                                                  title: Text(
                                                                      "Help protect your website and its users"
                                                                          "with clear and fair website terms and conditions."
                                                                          "These terms and conditions for a website set out"
                                                                          "key issues such as acceptable use, privacy, cookies, "
                                                                          "registration and passwords, intellectual property."),
                                                                  titleTextStyle: TextStyle(
                                                                    fontFamily: "Poppins",
                                                                    fontSize: 15,
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                          child: Text(
                                                            " Privacy Policy",
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontFamily: 'poppins',
                                                              color: AppColor.green,
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
                                      ),
                                    ],
                                  ),
                                ),),
                            ],
                          ),
                        );
                      });
                    },
                    child: Container(
                      height: height * 0.07,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 50,
                              offset: Offset(0, 1),
                              color: Color(0xFF11324d).withOpacity(0.2),
                            ),
                          ],
                          image: DecorationImage(
                            image: AssetImage("assets/images/lines.png"),
                          )),
                    ),
                  ),
                ),
                Positioned(
                  left: width * 0.2,
                  top: height * 0.117,
                  child: Text(
                    "My Bills",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 58,
                      color: Color(0xFF293952),
                    ),
                  ),
                ),
                Positioned(
                  left: width * 0.27,
                  top: height * 0.089,
                  child: Text(
                    "My Bills",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, index) {
                return Stack(children: [
                  Positioned(
                    child: Container(
                      margin: EdgeInsets.only(top: height * 0.02),
                      height: height * 0.14,
                      width: width - 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25.0),
                          bottomRight: Radius.circular(25.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFd8dbe0),
                            offset: Offset(1, 1),
                            blurRadius: 15,
                            spreadRadius: 10,
                          ),
                        ],
                      ),
                      child: Container(
                        margin: EdgeInsets.only(
                            top: height * 0.015, left: width * 0.05),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: height * 0.07,
                                      width: width * 0.16,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          border: Border.all(
                                              width: width * 0.002,
                                              color: Colors.red),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  "assets/images/brand1.png"))),
                                    ),
                                    SizedBox(width: width * 0.03),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "KenGen Power",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold,
                                            color: AppColor.mainColor,
                                          ),
                                        ),
                                        SizedBox(height: height * 0.001),
                                        Text(
                                          "ID: 190078601",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            color: AppColor.idColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                sizedText(
                                  text: "Auto pay on 26th Ramadan",
                                  color: AppColor.green,
                                ),
                                SizedBox(height: height * 0.001),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: height * 0.03,
                                      width: width * 0.2,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: AppColor.backGroundColor,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Select",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: AppColor.selectColor,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'poppins',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Text(
                                      "\$1226.00",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: AppColor.mainColor,
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'poppins',
                                      ),
                                    ),
                                    Text(
                                      "Due in 3 days",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColor.selectColor
                                            .withOpacity(0.5),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'poppins',
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.02,
                                ),
                                Container(
                                  height: height * 0.05,
                                  width: width * 0.013,
                                  decoration: BoxDecoration(
                                    color: AppColor.halfOval,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      bottomLeft: Radius.circular(30),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]);
              },
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: height * 0.02),
                width: width * 0.85,
                height: height * 0.07,
                decoration: const ShapeDecoration(
                  shape: StadiumBorder(),
                  gradient: LinearGradient(
                    colors: [Colors.blueGrey, Colors.deepOrangeAccent],
                  ),
                ),
                child: MaterialButton(
                  // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: StadiumBorder(),
                  child: Text(
                    'Pay the bill now',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


