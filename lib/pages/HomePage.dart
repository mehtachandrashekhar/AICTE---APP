import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../models/Row_Element_1.dart';
import '../models/Row_Element_2.dart';
import 'InternetErrorPage.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //method for check internet conection
  void checkInternetConnection(
      ConnectivityResult internetConnection, String url, int n) {
    // inside if condition is true then Internet is off otherwise is on
    if (internetConnection == ConnectivityResult.none) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => InternetErrorPage()));
    } else if (n == 1) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Row_Element_1(url: url)));
    } else if (n == 2) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Row_Element_2(url: url)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title:Image.asset("assets/images/logo_new.png"),
          backgroundColor: HexColor("#FCED9F") ,
          toolbarHeight: 77,
        ),

        backgroundColor: HexColor("#FCED9F"),

        body: Align(
          alignment: Alignment.bottomCenter,
          child: GridView.count(
            primary: false,
            reverse: true,
            crossAxisCount: 2,
            children: [

              // SCHEMES PAGE
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 30,
                  width: 30,
                  // color: Colors.deepOrange,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: HexColor("D9D9D9"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),

                    onPressed: () async {
                      //foe check internet Conection
                      final internetConnection =
                      await Connectivity().checkConnectivity();
                      checkInternetConnection(internetConnection,
                          "https://www.aicte-india.org/schemes", 1);
                    },

                    //for image and text
                    child: Column(
                      children: [
                        //for image
                        Container(
                          margin: EdgeInsets.only(),
                          // height: 63,
                          // width: 63,
                          // color: Colors.yellow,
                          child: Image.asset(
                              "assets/images/schemes-1.png"),
                        ),

                        //for text
                        Container(
                          margin: EdgeInsets.only(),
                          // height: 30,
                          // width: 120,
                          // color: Colors.red,
                          child: const Text(
                            "Schemes",
                            style: TextStyle(
                                fontFamily: "Ubuntu",
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // MORE PAGE
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: 30,
                  height: 30,
                  // color: Colors.deepOrange,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: HexColor("D9D9D9"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),

                    onPressed: () async {
                      //foe check internet Conection
                      final internetConnection =
                      await Connectivity().checkConnectivity();
                      checkInternetConnection(internetConnection,
                          "https://www.aicte-india.org/bureaus/quick-link", 2);
                    },

                    //for image and text
                    child: Column(
                      children: [
                        //for image
                        Container(
                          margin: EdgeInsets.only(top: 9),
                          height: 30,
                          width: 30,
                          // color: Colors.yellow,
                          child: Image.asset("assets/images/arrow_right.png"),
                        ),

                        //for text
                        Container(
                          margin: EdgeInsets.only(top: 4),
                          // height: 20,
                          // width: 120,
                          // color: Colors.red,
                          child: const Text(
                            "More",
                            style: TextStyle(
                                fontFamily: "Ubuntu",
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // INTERNSHIP
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 30,
                  width: 30,
                  // color: Colors.deepOrange,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: HexColor("D9D9D9"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),

                    onPressed: () async {
                      //for check internet Conection
                      final internetConnection =
                      await Connectivity().checkConnectivity();
                      checkInternetConnection(internetConnection,
                          "https://internship.aicte-india.org/", 1);
                    },

                    //for image and text
                    child: Column(
                      children: [
                        //for image
                        Container(
                          margin: EdgeInsets.only(),
                          // height: 65,
                          // width: 65,
                          // color: Colors.yellow,
                          child:
                          Image.asset("assets/images/internship.png",
                            fit: BoxFit.fill,
                          ),
                        ),

                        //for text
                        Container(
                          margin: EdgeInsets.only(top: 8, left: 8),
                          // height: 20,
                          // width: 120,
                          // color: Colors.red,
                          child: Center(
                            child: const Text("Internship",
                              style: TextStyle(
                                  fontFamily: "Ubuntu",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // AICTE APPROVED
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 30,
                  width: 30,
                  // color: Colors.deepOrange,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: HexColor("D9D9D9"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),

                    onPressed: () async {
                      //foe check internet Connection
                      final internetConnection =
                      await Connectivity().checkConnectivity();
                      checkInternetConnection(
                          internetConnection,
                          "https://facilities.aicte-india.org/dashboard/pages/angulardashboard.php#!/approved",
                          2);
                    },

                    //for image and text
                    child: Column(
                      children: [
                        //for image
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 70,
                          width: 70,
                          child:
                          Image.asset("assets/images/aicte_approved.png"),
                        ),

                        //for text
                        Container(
                          margin: EdgeInsets.only(top: 2),
                          height: 20,
                          width: 120,
                          // color: Colors.red,
                          child: const Text(
                            "Aicte Approved",
                            style: TextStyle(
                                fontFamily: "Ubuntu",
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // CIRCULAR PAGE
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 30,
                  width: 30,
                  // color: Colors.deepOrange,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: HexColor("D9D9D9"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),

                    onPressed: () async {
                      //for check internet Connection
                      final internetConnection =
                      await Connectivity().checkConnectivity();
                      checkInternetConnection(internetConnection,
                          "https://www.aicte-india.org/bulletins/annoucement", 1);
                    },

                    //for image and text
                    child: Column(
                      children: [
                        //for image
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          height: 70,
                          width: 70,
                          // color: Colors.yellow,
                          child:
                          Image.asset("assets/images/circular.png",
                            height: 70,
                            width: 70,
                            fit: BoxFit.fill,
                          ),
                        ),

                        //for text
                        Container(
                          margin: EdgeInsets.only(top: 7, left: 8),
                          height: 20,
                          width: 120,
                          // color: Colors.red,
                          child: Center(
                            child: const Text(
                              "Circular",
                              style: TextStyle(
                                  fontFamily: "Ubuntu",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ),
              ),

              // SCHOLARSHIP
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 30,
                  width: 30,
                  // color: Colors.deepOrange,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: HexColor("D9D9D9"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),

                    onPressed: () async {
                      final internetConnection = await Connectivity().checkConnectivity();
                      checkInternetConnection(internetConnection, "https://scholarships.gov.in/", 2);
                    },

                    //for image and text
                    child: Column(
                      children: [
                        //for image
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          height: 72,
                          width: 125,
                          // color: Colors.yellow,
                          child: Image.asset("assets/images/scholarship_r.png",
                            height: 140,
                            width: 145,
                            fit: BoxFit.fill,),
                        ),

                        //for text
                        Container(
                          margin: EdgeInsets.only(top: 6),
                          height: 20,
                          width: 120,
                          // color: Colors.red,
                          child: const Text(
                            "Scholarship",
                            style: TextStyle(
                                fontFamily: "Ubuntu",
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),

                ),
              ),
            ],

          ),
        )
    );
  }
}
