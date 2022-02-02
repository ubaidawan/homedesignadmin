import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:homedesignadmin/Global.dart';
import 'package:homedesignadmin/Screens/ChooseOperation.dart';

import 'Config.dart';

class Residential extends StatefulWidget {

  @override
  _ResidentialState createState() => _ResidentialState();
}

class _ResidentialState extends State<Residential> {
  String reqId;
  int position;
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
        body:  _loading ? Center(child: Container(
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
            child: CircularProgressIndicator())) :Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
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
              SY_Container(),
            ],
          ),
        ));
  }

  Widget SY_Container() {
    return Expanded(
      child: ListView.builder(
        itemCount: residentialmodellist.length,
        itemBuilder: (BuildContext ctx, index) {
          return Container(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                height: 700,
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
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 20.0, right: 20.0, bottom: 8.0),
                        child: Center(
                          child: Text(
                              'SQ Yard :${residentialmodellist[index].sqyard}'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, bottom: 8.0),
                        child: Center(
                          child: Text(
                              'Request Token :${residentialmodellist[index].uid}'),
                        ),
                      ),
                      //     style: TextSize_SqYard),
                      Row(
                        children: [
                          Text('Rooms'),
                          Spacer(),
                          Text(residentialmodellist[index].room),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Bathroom'),
                          Spacer(),
                          Text(residentialmodellist[index].bathroom),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Kitchen'),
                          Spacer(),
                          Text(residentialmodellist[index].kitchen),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Hall'),
                          Spacer(),
                          Text(residentialmodellist[index].hall),
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(20.0)),
                      Center(
                        child: Text(
                          'Construction Cost',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20.0)),
                      Row(
                        children: [
                          Text('Floor'),
                          Spacer(),
                          Text(residentialmodellist[index].floor),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Aluminium'),
                          Spacer(),
                          Text(residentialmodellist[index].aluminium),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Bricks'),
                          Spacer(),
                          Text(residentialmodellist[index].brick),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Cement'),
                          Spacer(),
                          Text(residentialmodellist[index].cement),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Sand'),
                          Spacer(),
                          Text(residentialmodellist[index].sand),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Steel'),
                          Spacer(),
                          Text(residentialmodellist[index].steel),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Stone'),
                          Spacer(),
                          Text(residentialmodellist[index].stone),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Timber'),
                          Spacer(),
                          Text(residentialmodellist[index].timber),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Cost'),
                          Spacer(),
                          Text(residentialmodellist[index].cost),
                        ],
                      ),

                      Image.network(
                        residentialmodellist[index].image,
                        height: 200.0,
                        width: 200.0,
                      ),

                      Spacer(),
                      Row(
                        children: [
                          InkWell(
                            onTap: () async {
                              reqId = residentialmodellist[index].uid;
                              position = index;
                              await acceptRequest();
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
                                'Accept',
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
                              reqId = residentialmodellist[index].uid;
                              position = index;
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
          );
        },
      ),
    );
  }

  acceptRequest() async {
    DatabaseReference reference = await FirebaseDatabase().reference().child("Requests").child(reqId);
        reference.update({
    'status':'accept',
    }).whenComplete(() {
      residentialmodellist[position].status = "accept";
          Fluttertoast.showToast(
              msg: " ${reqId} Accepted",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0);

      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => ChooseOperation()));
    });

  }

  rejectRequest() async {
    DatabaseReference reference = await  FirebaseDatabase().reference().child("Requests").child(reqId);
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

      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => ChooseOperation()));
    });
  }
}

