import 'package:flutter/material.dart';
import 'package:homedesignadmin/Screens/CommercialPlotSubmission.dart';
import 'package:homedesignadmin/Screens/ResidentialPlotSubmission.dart';
import 'package:homedesignadmin/Services/Data.dart';

class SelectRequest extends StatefulWidget {
  // const ({Key? key}) : super(key: key);

  @override
  _SelectRequestState createState() => _SelectRequestState();
}

class _SelectRequestState extends State<SelectRequest> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        // title: Text(
        //   'Home',
        //   style: TextStyle(
        //       fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.power_settings_new),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
                color: mainColor,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 40,
                    left: 0,
                    child: Container(
                      height: 60,
                      width: 260,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          )),
                    ),
                  ),
                  Positioned(
                      top: 55,
                      left: 10,
                      child: Text(
                        "Select Type",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: mainColor,
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {

                 Data.type = "Residential";
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => ResidentialPlotSubmisiion()),
                 );
              },
              child: Container(
                height: 230,
                child: Stack(
                  children: [
                    Positioned(
                        top: 35,
                        left: 20,
                        child: Material(
                          child: Container(
                            height: 180.0,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    offset: Offset(-10.0, 10.0),
                                    blurRadius: 20.0,
                                    spreadRadius: 4.0),
                              ],
                            ),
                          ),
                        )),
                    Positioned(
                        top: 0,
                        left: 30,
                        child: Card(
                            elevation: 10.0,
                            shadowColor: Colors.grey.withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage("assets/img.jpg"),
                                    ))))),
                    Positioned(
                      top: 60,
                      left: 200,
                      child: Container(
                        color: Colors.white,
                        height: 150,
                        width: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Residential",
                              style: TextStyle(
                                fontSize: 20,
                                color: mainColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 0,
                              height: 20,
                            ),
                            Text(
                              "Enjoy your own Personal Life and live your dreams",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 230,
              child: InkWell(
                onTap: () {
                   Data.type = "Commercial";
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => CommercialPlotSubmission()),
                   );
                },
                child: Stack(
                  children: [
                    Positioned(
                        top: 35,
                        left: 20,
                        child: Material(
                          child: Container(
                            height: 180.0,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    offset: Offset(-10.0, 10.0),
                                    blurRadius: 20.0,
                                    spreadRadius: 4.0),
                              ],
                            ),
                          ),
                        )),
                    Positioned(
                        top: 0,
                        left: 30,
                        child: Card(
                            elevation: 10.0,
                            shadowColor: Colors.grey.withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage("assets/comm.jpg"),
                                    ))))),
                    Positioned(
                      top: 60,
                      left: 200,
                      child: Container(
                        color: Colors.white,
                        height: 150,
                        width: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Commercial",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                color: mainColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 0,
                              height: 20,
                            ),
                            Text(
                              "Call us for amazing commercial plots and buildings.",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Divider(color: Colors.black,thickness: 0,height: 20,
                            // ),
                            // Text("Easy To Contact", style: TextStyle(
                            //   fontSize: 16,
                            //   color: Colors.grey,
                            //   fontWeight: FontWeight.bold,
                            // ),),
                            // Text("Reliable Services", style: TextStyle(
                            //   fontSize: 16,
                            //   color: Colors.grey,
                            //   fontWeight: FontWeight.bold,
                            // ),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

