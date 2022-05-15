import 'dart:math';

import 'package:custom_dialog/custom_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:homedesignadmin/Global.dart';
import 'package:homedesignadmin/Global.dart';
import 'package:homedesignadmin/Screens/ChooseOperation.dart';
import 'package:homedesignadmin/Screens/costing.dart';

import '../Global.dart';
import 'Config.dart';

class Price extends StatefulWidget {
  @override
  _PriceState createState() => _PriceState();
}

class _PriceState extends State<Price> {
  String reqId;

  bool _loading = true;

  @override
  void initState() {
    super.initState();
    fetchRequestUid();
    Future.delayed(Duration(seconds: 8), () {
      setState(() {
        _loading = false;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: mainColor,
          // title: Text(
          //   'Area(Residential)',
          //   style: TextStyle(
          //       color: Colors.black87,
          //       fontSize: 23,
          //       fontWeight: FontWeight.bold),
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
        body: _loading
            ? Center(
                child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        //   color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(143, 148, 251, .2),
                              blurRadius: 20.0,
                              offset: Offset(0, 10))
                        ]),
                    child: CircularProgressIndicator()))
            : SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Container(
                        height: 1,
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
                                height: 80,
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
                                  "Residential Requests",
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: mainColor,
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Expanded(child: SY_Container()),
                    ],
                  ),
                ),
              ));
  }

  Widget SY_Container() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          height: 1200,
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
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, left: 20.0, right: 20.0, bottom: 8.0),
                    child: Center(
                      child: Text(
                        'SQ Yard :${residentialmodellist[position].sqyard}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, bottom: 8.0),
                    child: Center(
                      child: Text(
                        'Request Token :${residentialmodellist[position].uid}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.cyan,
                            fontSize: 16),
                      ),
                    ),
                  ),
                  Divider(),
                  //     style: TextSize_SqYard),
                  // Row(
                  //   children: [
                  //     Text('Rooms',style: TextStyle(fontWeight: FontWeight.bold),),
                  //     Spacer(),
                  //     Text(residentialmodellist[index].room,style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold),),
                  //   ],
                  // ),
                  // Row(
                  //   children: [
                  //     Text('Bathroom',style: TextStyle(fontWeight: FontWeight.bold),),
                  //     Spacer(),
                  //     Text(residentialmodellist[index].bathroom,style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold),),
                  //   ],
                  // ),
                  // Row(
                  //   children: [
                  //     Text('Kitchen',style: TextStyle(fontWeight: FontWeight.bold),),
                  //     Spacer(),
                  //     Text(residentialmodellist[index].kitchen,style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold),),
                  //   ],
                  // ),
                  // Row(
                  //   children: [
                  //     Text('Hall',style: TextStyle(fontWeight: FontWeight.bold),),
                  //     Spacer(),
                  //     Text(residentialmodellist[index].hall,style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold),),
                  //   ],
                  // ),
                  Padding(padding: EdgeInsets.all(20.0)),
                  // Divider(),
                  Center(
                    child: Text(
                      'Construction Cost',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  Divider(),
                  Padding(padding: EdgeInsets.all(20.0)),
                  Row(
                    children: [
                      Text('Item Name'),
                      Spacer(),
                      Text('Quantity'),
                      Spacer(),
                      Text('Price'),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Room       '),
                      Spacer(),
                      Text("$totalrooms"),
                      Spacer(),
                      Text('$totalroomcost'),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Bathroom'),
                      Spacer(),
                      Text('$totalbathroom'),
                      Spacer(),
                      Text('$totalbathroomcost'),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Hall           '),
                      Spacer(),
                      Text('$totalhall'),
                      Spacer(),
                      Text('$totalhallcost'),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Kitchen     '),
                      Spacer(),
                      Text('$totalkitchen'),
                      Spacer(),
                      Text('$totalkitchencost'),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Floor          '),
                      Spacer(),
                      Text('$totalfloor'),
                      Spacer(),
                      Text('$totalfloorcost'),
                    ],
                  ),

                  // Row(
                  //   children: [
                  //     Text('Floor',style: TextStyle(fontWeight: FontWeight.bold),),
                  //     Spacer(),
                  //     Text(residentialmodellist[index].floor,style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold),),
                  //   ],
                  // ),
                  // Row(
                  //   children: [
                  //     Text('Aluminium',style: TextStyle(fontWeight: FontWeight.bold),),
                  //     Spacer(),
                  //     Text(residentialmodellist[index].aluminium,style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold),),
                  //   ],
                  // ),
                  // Row(
                  //   children: [
                  //     Text('Bricks',style: TextStyle(fontWeight: FontWeight.bold),),
                  //     Spacer(),
                  //     Text(residentialmodellist[index].brick,style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold),),
                  //   ],
                  // ),
                  // Row(
                  //   children: [
                  //     Text('Cement',style: TextStyle(fontWeight: FontWeight.bold),),
                  //     Spacer(),
                  //     Text(residentialmodellist[index].cement,style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold),),
                  //   ],
                  // ),
                  // Row(
                  //   children: [
                  //     Text('Sand',style: TextStyle(fontWeight: FontWeight.bold),),
                  //     Spacer(),
                  //     Text(residentialmodellist[index].sand,style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold),),
                  //   ],
                  // ),
                  // Row(
                  //   children: [
                  //     Text('Steel',style: TextStyle(fontWeight: FontWeight.bold),),
                  //     Spacer(),
                  //     Text(residentialmodellist[index].steel,style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold),),
                  //   ],
                  // ),
                  // Row(
                  //   children: [
                  //     Text('Stone',style: TextStyle(fontWeight: FontWeight.bold),),
                  //     Spacer(),
                  //     Text(residentialmodellist[index].stone,style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold),),
                  //   ],
                  // ),
                  // Row(
                  //   children: [
                  //     Text('Wood',style: TextStyle(fontWeight: FontWeight.bold),),
                  //     Spacer(),
                  //     Text(residentialmodellist[index].wood,style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold),),
                  //   ],
                  // ),
                  Divider(),
                  Row(
                    children: [
                      Text('Machinery Cost'),
                      Spacer(),
                      Text('$machinerycost'),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Text('Labor Cost'),
                      Spacer(),
                      Text('$labourcost'),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Text('Total Cost'),
                      Spacer(),
                      Text('$totalquotation'),
                    ],
                  ),
                  Divider(),
                  Expanded(
                      child:
                          Image.asset(residentialmodellist[position].image1)),
                  Divider(),
                  Expanded(
                      child:
                          Image.asset(residentialmodellist[position].image2)),
                  Divider(),
                  Row(
                    children: [
                      InkWell(
                        onTap: () async {
                          await SubmitQuotation();
                        },
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 2.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              stops: [0.1, 0.5, 0.7, 0.9],
                              colors: [
                                Colors.green.shade300,
                                Colors.green.shade400,
                                Colors.green.shade500,
                                Colors.green.shade600,
                              ],
                            ),
                          ),
                          child: Center(
                              child: Text(
                            'Forward',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          )),
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () async {
                          await rejectRequest();
                        },
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 2.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              stops: [0.1, 0.5, 0.7, 0.9],
                              colors: [
                                Colors.red.shade300,
                                Colors.red.shade400,
                                Colors.red.shade500,
                                Colors.red.shade600,
                              ],
                            ),
                          ),
                          child: Center(
                              child: Text(
                            'Reject',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  acceptRequest() async {
    DatabaseReference reference =
        await FirebaseDatabase().reference().child("Requests").child(reqId);
    reference.update({
      'status': 'accepted',
    }).whenComplete(() {
      // residentialmodellist[position].status = "accept";
      //     Fluttertoast.showToast(
      //         msg: " ${reqId} Accepted",
      //         toastLength: Toast.LENGTH_SHORT,
      //         gravity: ToastGravity.CENTER,
      //         timeInSecForIosWeb: 1,
      //         backgroundColor: Colors.green,
      //         textColor: Colors.white,
      //         fontSize: 16.0);
      showDialog(
        context: context,
        builder: (context) => CustomDialog(
          content: Text(
            'Accepted',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20.0,
            ),
          ),
          title: Text(''),
          firstColor: Color(0xFF80DEEA),
          secondColor: Colors.white,
          headerIcon: Icon(
            Icons.check_circle_outline,
            size: 120.0,
            color: Colors.white,
          ),
        ),
      );
      // Navigator.of(context).pushReplacement(
      //     MaterialPageRoute(builder: (BuildContext context) => ChooseOperation()));
    });
  }

  rejectRequest() async {
    DatabaseReference reference =
        await FirebaseDatabase().reference().child("Requests").child(reqId);
    reference.remove().whenComplete(() {
      residentialmodellist.removeAt(position);
      Fluttertoast.showToast(
          msg: " ${reqId} Rejected",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);

      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) => ChooseOperation()));
    });
  }

  SubmitQuotation() async {
    FirebaseAuth auth = FirebaseAuth.instance;

    DatabaseReference reference = await FirebaseDatabase.instance
        .reference()
        .child("Requests")
        .child(residentialmodellist[position].uid);
    reference.update({
      "type": "Residential",
      "sqyard": residentialmodellist[position].sqyard,
      "totalroom": totalrooms.toString(),
      "roomcost": totalroomcost.toString(),
      "totalbathroom": totalbathroom.toString(),
      "bathroomcost": totalbathroomcost.toString(),
      "totalkitchen": totalkitchen.toString(),
      "kitchencost": totalkitchencost.toString(),
      "totalhall": totalhall.toString(),
      "hallcost ": totalhallcost.toString(),
      "totalfloor": totalfloor.toString(),
      "floorcost": totalfloorcost.toString(),
      "constructioncost": totalquotation.toString(),
      "labourcost":labourcost.toString(),
      "machinerycost": machinerycost.toString(),
      "status": "accept",
      "progress":"0"
    }).whenComplete(() {
      // Fluttertoast.showToast(
      //     msg: "Submitted",
      //     toastLength: Toast.LENGTH_SHORT,
      //     gravity: ToastGravity.CENTER,
      //     timeInSecForIosWeb: 1,
      //     backgroundColor: Colors.green,
      //     textColor: Colors.white,
      //     fontSize: 16.0);
      showDialog(
        context: context,
        builder: (context) => CustomDialog(
          content: Text(
            'Submitted',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20.0,
            ),
          ),
          title: Text(''),
          firstColor: Color(0xFF80DEEA),
          secondColor: Colors.white,
          headerIcon: Icon(
            Icons.check_circle_outline,
            size: 120.0,
            color: Colors.white,
          ),
        ),
      );
    });
  }
}
