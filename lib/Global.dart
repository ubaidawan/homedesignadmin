import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';

import 'Model/CommercialDataModel.dart';
import 'Model/CommercialRequestModelData.dart';
import 'Model/ResidentRequestModelData.dart';
import 'Model/ResidentialDataModel.dart';

List<String> uidlist = [];
List<ResidentialDataModel> residentialmodellist = [];
List<CommercialDataModel> commercialmodellist = [];
List<String> requestlist =[];
List<ResidentRequestDataModel> residentialrequestmodellist =[];
List<CommercialRequestModelData> commercialrequestmodellist =[];
String cid,
    key,
    aluminium,
    bathroom,
    brick,
    cement,
    cost,
    floor,
    hall,
    image,
    kitchen,
    milestone,
    room,
    sand,
    sqyard,
    steel,
    stone,
    timber,
    type,
    name;

Future<void> fetchRequestUid() async {
  uidlist.clear();
  residentialmodellist.clear();
  commercialmodellist.clear();
  DatabaseReference reference =
      await FirebaseDatabase.instance.reference().child("Requests");
  reference.once().then((value) {
    Map<dynamic, dynamic> values = value.snapshot.value;
    Iterable childkey2 = values.keys;
    childkey2.forEach((element) {
      uidlist.add(element);
    });
  }).then((value) async {
    await fetchResidentialDetails();
  });
}

Future<void> fetchResidentialDetails()  async {
  for (int i = 0; i < uidlist.length; i++) {
    DatabaseReference reference = await FirebaseDatabase.instance.reference().child("Requests").child(uidlist.elementAt(i));
    reference.once().then((value)  {
      if (value.snapshot.child("type").value.toString() == "Residential") {
        String status = value.snapshot
            .child("status")
            .value
            .toString();
        if (status == "pending") {
          residentialmodellist.add(ResidentialDataModel(
            value.snapshot
                .child("cid")
                .value
                .toString(),
            value.snapshot.key,
            value.snapshot
                .child("aluminium")
                .value
                .toString(),
            value.snapshot
                .child("bathroom")
                .value
                .toString(),
            value.snapshot
                .child("brick")
                .value
                .toString(),
            value.snapshot
                .child("cement")
                .value
                .toString(),
            value.snapshot
                .child("cost")
                .value
                .toString(),
            value.snapshot
                .child("floor")
                .value
                .toString(),
            value.snapshot
                .child("hall")
                .value
                .toString(),
            value.snapshot
                .child("image")
                .value
                .toString(),
            value.snapshot
                .child("kitchen")
                .value
                .toString(),
            /*  value.snapshot.child("milestone").value.toString(),*/
            value.snapshot
                .child("room")
                .value
                .toString(),
            value.snapshot
                .child("sand")
                .value
                .toString(),
            value.snapshot
                .child("sqyard")
                .value
                .toString(),
            value.snapshot
                .child("steel")
                .value
                .toString(),
            value.snapshot
                .child("stone")
                .value
                .toString(),
            value.snapshot
                .child("timber")
                .value
                .toString(),
            value.snapshot
                .child("type")
                .value
                .toString(),
            value.snapshot
                .child("status")
                .value
                .toString(),
          ));
        }
      }
      else if (value.snapshot.child("type").value.toString() ==
          "Commercial") {
        String cid = value.snapshot
            .child("cid")
            .value
            .toString();
        String status = value.snapshot
            .child("status")
            .value
            .toString();
        if (status == "pending") {
          commercialmodellist.add(CommercialDataModel(
            value.snapshot
                .child("cid")
                .value
                .toString(),
            value.snapshot.key,
            value.snapshot
                .child("cost")
                .value
                .toString(),
            value.snapshot
                .child("image")
                .value
                .toString(),
            value.snapshot
                .child("sqfeet")
                .value
                .toString(),
            value.snapshot
                .child("type")
                .value
                .toString(),
            value.snapshot
                .child("status")
                .value
                .toString(),
          ));
        }
      }
    });
  }
}


Future<void> fetchApprovalRequestUid() async {
  requestlist.clear();
  residentialrequestmodellist.clear();
  commercialrequestmodellist .clear();
  DatabaseReference DB_Refrance =
  await FirebaseDatabase.instance.reference().child("Requests");
  DB_Refrance.once().then((value) {
    Map<dynamic, dynamic> values = value.snapshot.value;
    Iterable childkey2 = values.keys;
    childkey2.forEach((element) {
      requestlist.add(element);
    });
  }).then((value) async {
    await fetchRequestDetails();

  });
}

fetchRequestDetails() async {
  for (int i = 0; i < requestlist.length; i++) {
    int len = requestlist.length;
    DatabaseReference reference =  FirebaseDatabase.instance
        .reference()
        .child("Requests")
        .child(requestlist.elementAt(i));
    reference.once().then((value) {
      if (
          value.snapshot.child("status").value.toString() == "accept") {
        String typee = value.snapshot.child("type").value.toString();
        if (typee == "Residential") {
          residentialrequestmodellist.add(ResidentRequestDataModel(
            requestlist.elementAt(i),
            value.snapshot.child("aluminium").value.toString(),
            value.snapshot.child("bathroom").value.toString(),
            value.snapshot.child("brick").value.toString(),
            value.snapshot.child("cement").value.toString(),
            value.snapshot.child("cid").value.toString(),
            value.snapshot.child("cost").value.toString(),
            value.snapshot.child("floor").value.toString(),
            value.snapshot.child("hall").value.toString(),
            value.snapshot.child("image").value.toString(),
            value.snapshot.child("kitchen").value.toString(),
            value.snapshot.child("room").value.toString(),
            value.snapshot.child("sand").value.toString(),
            value.snapshot.child("sqyard").value.toString(),
            value.snapshot.child("status").value.toString(),
            value.snapshot.child("steel").value.toString(),
            value.snapshot.child("stone").value.toString(),
            value.snapshot.child("timber").value.toString(),
            value.snapshot.child("type").value.toString(),
          ));
        } else  {
          commercialrequestmodellist.add(CommercialRequestModelData
            ( requestlist.elementAt(i),
              value.snapshot.child("cid").value.toString(),
              value.snapshot.child("cost").value.toString(),
              value.snapshot.child("image").value.toString(),
              value.snapshot.child("sqfeet").value.toString(),
              value.snapshot.child("status").value.toString(),
              value.snapshot.child("type").value.toString()
          ));
        }
      }

    });
  }}

