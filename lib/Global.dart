import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';

import 'Model/CommercialDataModel.dart';
import 'Model/CommercialRequestModelData.dart';
import 'Model/ResidentRequestModelData.dart';
import 'Model/ResidentialDataModel.dart';



// billing calculation variables...................................................................


int roomcostAluminium = 0;
int bathroomcostAluminium = 0;
int hallcostAluminium = 0;
int kitchencostAluminium = 0;
int floorcostAluminium = 0;
int roomcostCement = 0;
int bathroomcostCement = 0;
int hallcostCement = 0;
int kitchencostCement = 0;
int floorcostCement = 0;
int roomcostSteel = 0;
int bathroomcostSteel = 0;
int hallcostSteel = 0;
int kitchencostSteel = 0;
int floorcostSteel = 0;
int roomcostSand = 0;
int bathroomcostSand = 0;
int hallcostSand = 0;
int kitchencostSand = 0;
int floorcostSand = 0;
int roomcostBricks = 0;
int bathroomcostBricks = 0;
int hallcostBricks = 0;
int kitchencostBricks = 0;
int floorcostBricks = 0;
int roomcostWood = 0;
int bathroomcostWood = 0;
int hallcostWood = 0;
int kitchencostWood = 0;
int floorcostWood = 0;
int roomcostStone = 0;
int bathroomcostStone = 0;
int hallcostStone = 0;
int kitchencostStone = 0;
int floorcostStone = 0;

int aluminiumcost, brickscost , cementcost , sandcost , steelcost , stonecost , woodcost;
int totalrooms , totalfloor , totalbathroom , totalkitchen , totalhall;
int roomcost , floorcost , bathroomcost , kitchencost , hallcost;
int totalroomcost , totalfloorcost , totalbathroomcost , totalkitchencost , totalhallcost;
int totalquotation  ;
  double  labourcost , machinerycost;


//..........................................................................................................
int position;
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
    wood,
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
                .child("floor")
                .value
                .toString(),
            value.snapshot
                .child("hall")
                .value
                .toString(),
            value.snapshot
                .child("image1")
                .value
                .toString(),
            value.snapshot
                .child("image2")
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
                .child("wood")
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

