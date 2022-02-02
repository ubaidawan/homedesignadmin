import 'dart:ffi';

import 'package:flutter/material.dart';

import '../Global.dart';
import 'Config.dart';

class ResidentialMilestoneScreen extends StatefulWidget {
  @override
  _ResidentialMilestoneScreenState createState() =>
      _ResidentialMilestoneScreenState();
}

class _ResidentialMilestoneScreenState
    extends State<ResidentialMilestoneScreen> {
  @override
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
        body: Container(
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
                        width: 280,
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
                          "Residential Milestone",
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
        itemCount: residentialrequestmodellist.length,
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
                              'SQ Yard :${residentialrequestmodellist[index].sqyard}'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, bottom: 8.0),
                        child: Center(
                          child: Text(
                              'Request Token :${residentialrequestmodellist[index].requestId}'),
                        ),
                      ),
                      //     style: TextSize_SqYard),
                      Row(
                        children: [
                          Text('Rooms'),
                          Spacer(),
                          Text(residentialrequestmodellist[index].room),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Bathroom'),
                          Spacer(),
                          Text(residentialrequestmodellist[index].bathroom),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Kitchen'),
                          Spacer(),
                          Text(residentialrequestmodellist[index].kitchen),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Hall'),
                          Spacer(),
                          Text(residentialrequestmodellist[index].hall),
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
                          Text(residentialrequestmodellist[index].floor),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Aluminium'),
                          Spacer(),
                          Text(residentialrequestmodellist[index].aluminium),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Bricks'),
                          Spacer(),
                          Text(residentialrequestmodellist[index].brick),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Cement'),
                          Spacer(),
                          Text(residentialrequestmodellist[index].cement),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Sand'),
                          Spacer(),
                          Text(residentialrequestmodellist[index].sand),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Steel'),
                          Spacer(),
                          Text(residentialrequestmodellist[index].steel),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Stone'),
                          Spacer(),
                          Text(residentialrequestmodellist[index].stone),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Timber'),
                          Spacer(),
                          Text(residentialrequestmodellist[index].timber),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Cost'),
                          Spacer(),
                          Text(residentialrequestmodellist[index].cost),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Image.network(
                        residentialrequestmodellist[index].image,
                        // height: 200.0,
                        // width: 200.0,
                      ),

                      Spacer(),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
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
                                ' Show Milestone',
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
}
