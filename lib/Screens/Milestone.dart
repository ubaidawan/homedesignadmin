import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:homedesignadmin/Screens/ChooseOperation.dart';
import 'package:homedesignadmin/Services/Data.dart';

import 'Config.dart';

class Milestone extends StatefulWidget {
  @override
  _MilestoneState createState() => _MilestoneState();
}

class _MilestoneState extends State<Milestone> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int count = 1;
  int index = 1;
  int counting = 1;
  int val =0;
  List<int> obselateindexlist = [];
  TextEditingController firsttaskcontroller,
      secondtaskcontroller,
      thirdtaskcontroller,
      fourthtaskcontroller;
  List<String> milestonelist = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    milestonelist.clear();
    firsttaskcontroller = new TextEditingController();
    secondtaskcontroller = new TextEditingController();
    thirdtaskcontroller = new TextEditingController();
    fourthtaskcontroller = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
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
                  color: Colors.cyan[500],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 40,
                      left: 0,
                      child: Container(
                        height: 70,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            )),
                      ),
                    ),
                    Positioned(
                        top: 60,
                        left: 20,
                        child: Text(
                          "Milestones",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.cyan[500],
                          ),
                        ))
                  ],
                ),
              ),
              SY_Container(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 55,
              child: ElevatedButton.icon(
                onPressed: ()  {
                   SaveMilestone();
                },
                icon: Icon(Icons.add, size: 18),
                label: Text("Add Milestone"),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget SY_Container() {
    return Expanded(
      child: ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext ctx, index) {
          return Container(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                 // height: 580,
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
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, bottom: 28.0),
                          child: Text(
                            ("Milestone ${index + 1}").toString(),
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Task 1",
                              style: TextStyle(fontSize: 15.0),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 6),
                              child: TextFormField(
                                controller: firsttaskcontroller,
                                validator: MultiValidator([
                                  RequiredValidator(
                                      errorText: 'Field is required'),
                                ]),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter your task details ',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Task 2",
                              style: TextStyle(fontSize: 15.0),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 6),
                              child: TextFormField(
                                controller: secondtaskcontroller,
                                validator: MultiValidator([
                                  RequiredValidator(
                                      errorText: 'Field is required'),
                                ]),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter your task details ',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Task 3",
                              style: TextStyle(fontSize: 15.0),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 6),
                              child: TextFormField(
                                controller: thirdtaskcontroller,
                                validator: MultiValidator([
                                  RequiredValidator(
                                      errorText: 'Field is required'),
                                ]),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter your task details ',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Task 4",
                              style: TextStyle(fontSize: 15.0),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 6),
                              child: TextFormField(
                                controller: fourthtaskcontroller,
                                validator: MultiValidator([
                                  RequiredValidator(
                                      errorText: 'Field is required'),
                                ]),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter your task details ',
                                ),
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton.icon(
                          onPressed: () {
                            if (!obselateindexlist.contains(index) || obselateindexlist.isEmpty) {
                              if (firsttaskcontroller.text.isEmpty || secondtaskcontroller.text.isEmpty || thirdtaskcontroller.text.isEmpty || fourthtaskcontroller.text.isEmpty) {
                                Fluttertoast.showToast(
                                    msg: "Required fields",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                              } else {
                                // obselateindexlist.add(index);
                              //  milestonelist.add(index.toString());
                                milestonelist.add(firsttaskcontroller.text);
                                milestonelist.add(secondtaskcontroller.text);
                                milestonelist.add(thirdtaskcontroller.text);
                                milestonelist.add(fourthtaskcontroller.text);
                                firsttaskcontroller.clear();
                                secondtaskcontroller.clear();
                                thirdtaskcontroller.clear();
                                fourthtaskcontroller.clear();
                                setState(() {
                                  if(count!=4) {
                                    count++;
                                  }
                                });
                              }
                            } else {
                              firsttaskcontroller.clear();
                              secondtaskcontroller.clear();
                              thirdtaskcontroller.clear();
                              fourthtaskcontroller.clear();
                              Fluttertoast.showToast(
                                  msg: "Already data inserted",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            }
                          },
                          icon: Icon(Icons.add_task, size: 18),
                          label: Text("Add Task"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  SaveMilestone() async {
      DatabaseReference reference = await FirebaseDatabase.instance
          .reference()
          .child("Milestone")
          .child(Data.requestUid);
      reference.child("Milestone ${index}").set({
        "task${counting}": milestonelist.elementAt(0),
        "task${counting + 1}": milestonelist.elementAt(1),
        "task${counting + 2}": milestonelist.elementAt(2),
        "task${counting + 3}": milestonelist.elementAt(3)
      }).then((value) async {
        index++;
        counting =1;
        DatabaseReference reference = await FirebaseDatabase.instance
            .reference()
            .child("Milestone")
            .child(Data.requestUid);
        reference.child("Milestone ${index}").set({
          "task${counting}": milestonelist.elementAt(4),
          "task${counting + 1}": milestonelist.elementAt(5),
          "task${counting + 2}": milestonelist.elementAt(6),
          "task${counting + 3}": milestonelist.elementAt(7)
        }).then((value) async {

          index++;
          counting =1;

          DatabaseReference reference = await FirebaseDatabase.instance
              .reference()
              .child("Milestone")
              .child(Data.requestUid);
          reference.child("Milestone ${index}").set({
            "task${counting}": milestonelist.elementAt(8),
            "task${counting + 1}": milestonelist.elementAt(9),
            "task${counting + 2}": milestonelist.elementAt(10),
            "task${counting + 3}": milestonelist.elementAt(11)
          }).then((value) async {

            index++;
            counting =1;
            DatabaseReference reference = await FirebaseDatabase.instance
                .reference()
                .child("Milestone")
                .child(Data.requestUid);
            reference.child("Milestone ${index}").set({
              "task${counting}": milestonelist.elementAt(12),
              "task${counting + 1}": milestonelist.elementAt(13),
              "task${counting + 2}": milestonelist.elementAt(14),
              "task${counting + 3}": milestonelist.elementAt(15)
            }).then((value) {
              counting =1;
              index =1;
              count = 1;
              milestonelist.clear();
              Data.requestUid = null;
              Fluttertoast.showToast(
                  msg: "Submitted",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.green,
                  textColor: Colors.white,
                  fontSize: 16.0);
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => ChooseOperation()));


            });
          });
        });
      });

  }
}
