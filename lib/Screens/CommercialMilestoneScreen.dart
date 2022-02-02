import 'package:flutter/material.dart';
import 'package:homedesignadmin/Screens/Config.dart';

import '../Global.dart';




class CommercialMilestoneScreen extends StatefulWidget {


  @override
  _CommercialMilestoneScreenState createState() => _CommercialMilestoneScreenState();
}

class _CommercialMilestoneScreenState extends State<CommercialMilestoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: mainColor,
        // title: Text(
        //   'Area(Commercial)',
        //   style: TextStyle(
        //       color: Colors.black87,
        //       fontSize: 25,
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
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
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
                        width: 290,
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
                          "Commercial Milestone",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: mainColor,
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height/1.2,
                child: SY_Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget SY_Container() {
    return ListView.builder(
      itemCount: commercialrequestmodellist.length,
      itemBuilder: (BuildContext ctx, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child:  Container(
            child:   Container(
              // height: MediaQuery.of(context).size.height,
              // child: SY_Container(),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  height:350,
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
                          padding: const EdgeInsets.only(top: 8.0 ,left: 20.0 , right: 20.0 , bottom: 8.0),
                          child: Center(
                            child:
                            Text( 'SQ Feet :${commercialrequestmodellist[index].sqfeet}'),

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only( left: 20.0 , right: 20.0 , bottom: 8.0),
                          child: Center(
                            child:
                            Text( 'Request Token :${commercialrequestmodellist[index].uid}'),

                          ),
                        ),

                        //     style: TextSize_SqYard),
                        Row(
                          children: [
                            Text('Cost'),
                            Spacer(),
                            Text( commercialrequestmodellist[index].cost),
                          ],
                        ),

                        /*  Row(
                          children: [
                            Text('Milestone'),
                            Spacer(),
                            //  Text( residentialmodellist[index].floor),
                          ],
                        ),*/
                        Row(
                          children: [
                            Image.network(commercialrequestmodellist[index].image ,
                              height: 100.0,
                              width: 100.0,),

                            SizedBox(
                              width: 3,
                            ),

                          ],
                        ),
                        Spacer(),
                        /*Row(
                          children: [
                            InkWell(
                              onTap: () async {
                                reqId = commercialmodellist[index].uid;
                                position = index;
                                await acceptRequest();
                              },
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width/2.6,
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
                                width: MediaQuery.of(context).size.width/2.6,
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
                        ),*/
                        Row(
                          children: [
                            InkWell(
                              onTap: ()  {

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
            ),
          ),
        );
      },
    );
  }
}
