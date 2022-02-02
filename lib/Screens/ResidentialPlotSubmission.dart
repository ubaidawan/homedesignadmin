import 'dart:io';
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:homedesignadmin/Screens/Milestone.dart';
import 'package:homedesignadmin/Services/Data.dart';
import 'package:homedesignadmin/Widget/Header.dart';
import 'package:image_picker/image_picker.dart';

class ResidentialPlotSubmisiion extends StatefulWidget {
  @override
  _ResidentialPlotSubmisiionState createState() =>
      _ResidentialPlotSubmisiionState();
}

class _ResidentialPlotSubmisiionState extends State<ResidentialPlotSubmisiion> {
  File _image;
  String imageUrl;

  TextEditingController sqyardcontroller,
      _roomcontroller,
      _bathroomcontroller,
      _kitcheccontroller,
      _hallcontroller,
      _floorcontroller,
      _cementcontroller,
      _steelcontroller,
      _sandcontroller,
      _timbercontroller,
      _brickscontoller,
      _stonecontroller,
      _aluminiumcontroller,
  _costcontroller;

  // String email, password, contact, Username;
  DatabaseReference reference =
      FirebaseDatabase.instance.reference().child("UserClient");
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    sqyardcontroller = new TextEditingController();
    _roomcontroller = new TextEditingController();
    _bathroomcontroller = new TextEditingController();
    _kitcheccontroller = new TextEditingController();

    _hallcontroller = new TextEditingController();
    _floorcontroller = new TextEditingController();
    _cementcontroller = new TextEditingController();
    _steelcontroller = new TextEditingController();

    _sandcontroller = new TextEditingController();
    _timbercontroller = new TextEditingController();
    _brickscontoller = new TextEditingController();

    _stonecontroller = new TextEditingController();
    _aluminiumcontroller = new TextEditingController();
    _costcontroller = new TextEditingController();

  }
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
         // color: Colors.black26,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                    ),
                    color: mainColor,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 50,
                        left: 0,
                        child: Container(
                          height: 60,
                          width: 250,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              )),
                        ),
                      ),
                      Positioned(
                          top: 65,
                          left: 20,
                          child: Text(
                            "Plot Submission",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: mainColor,
                            ),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      TextFormField(
                        validator: MultiValidator([
                          RequiredValidator(
                              errorText: 'Field is required'),
                        ]),

                        controller: sqyardcontroller,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          ),
                          hintText: "Sq Yards",
                          hintStyle: TextStyle(color: Colors.black),
                          // border: InputBorder.none
                        ),
                      ),
SizedBox(height: 15,),
                      TextFormField(
                        style: TextStyle(

 ),
                        controller: _roomcontroller,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          ),
                          hintText: "No of Rooms",
                          hintStyle: TextStyle(color: Colors.black),
                          // border: InputBorder.none
                        ),
                      ),
                      SizedBox(height: 15,),

                      TextFormField(
                        validator: MultiValidator([
                          RequiredValidator(
                              errorText: 'Field is required'),
                        ]),
                        style: TextStyle(

),
                        controller: _bathroomcontroller,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          ),
                          hintText: "No of Bathrooms",
                          hintStyle: TextStyle(color: Colors.black),
                          // border: InputBorder.none
                        ),
                      ),
                      SizedBox(height: 15,),

                      TextFormField(
                        validator: MultiValidator([
                          RequiredValidator(
                              errorText: 'Field is required'),
                        ]),
                        style: TextStyle(



),
                        controller: _kitcheccontroller,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          ),
                          hintText: "No of Kitchen",
                          hintStyle: TextStyle(color: Colors.black),
                          // border: InputBorder.none
                        ),
                      ),
                      SizedBox(height: 15,),

                      TextFormField(
                        validator: MultiValidator([
                          RequiredValidator(
                              errorText: 'Field is required'),
                        ]),
                        style: TextStyle(


),
                        controller: _hallcontroller,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          ),
                          hintText: "No of Hall",
                          hintStyle: TextStyle(color: Colors.black),
                          // border: InputBorder.none
                        ),
                      ),
                      SizedBox(height: 15,),

                      TextFormField(
                        validator: MultiValidator([
                          RequiredValidator(
                              errorText: 'Field is required'),
                        ]),
                        style: TextStyle(


),
                        controller: _floorcontroller,
                        decoration: InputDecoration(
                          // focusedBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(color: Colors.black,width: 2),
                          // ),
                          hintText: "No of Floors",
                          hintStyle: TextStyle(color: Colors.black),
                          // border: InputBorder.none
                        ),
                      ),
                      SizedBox(height: 15,),

                      TextFormField(
                        style: TextStyle(


),
                        controller: _cementcontroller,
                        decoration: InputDecoration(
                          // focusedBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(color: Colors.black,width: 2),
                          // ),
                          hintText: "No of Cement packs ",
                          hintStyle: TextStyle(color: Colors.black),
                          // border: InputBorder.none
                        ),
                      ),
                      SizedBox(height: 15,),

                      TextFormField(
                        validator: MultiValidator([
                          RequiredValidator(
                              errorText: 'Field is required'),
                        ]),
                        style: TextStyle(


),
                        controller: _steelcontroller,
                        decoration: InputDecoration(
                          // focusedBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(color: Colors.black,width: 2),
                          // ),
                          hintText: "No of Steel rods ",
                          hintStyle: TextStyle(color: Colors.black),
                          // border: InputBorder.none
                        ),
                      ),
                      SizedBox(height: 15,),

                      TextFormField(
                        validator: MultiValidator([
                          RequiredValidator(
                              errorText: 'Field is required'),
                        ]),
                        style: TextStyle(
),
                        controller: _sandcontroller,
                        decoration: InputDecoration(
                          // focusedBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(color: Colors.black,width: 2),
                          // ),
                          hintText: "No of sand packs ",
                          hintStyle: TextStyle(color: Colors.black),
                          // border: InputBorder.none
                        ),
                      ),
                      SizedBox(height: 15,),

                      TextFormField(
                        validator: MultiValidator([
                          RequiredValidator(
                              errorText: 'Field is required'),
                        ]),
                        style: TextStyle(
),
                        controller: _timbercontroller,
                        decoration: InputDecoration(
                          // focusedBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(color: Colors.black,width: 2),
                          // ),
                          hintText: "No of timber bulk ",
                          hintStyle: TextStyle(color: Colors.black),
                          // border: InputBorder.none
                        ),
                      ),
                      SizedBox(height: 15,),

                      TextFormField(
                        validator: MultiValidator([
                          RequiredValidator(
                              errorText: 'Field is required'),
                        ]),
                        style: TextStyle(
),
                        controller: _brickscontoller,
                        decoration: InputDecoration(
                          // focusedBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(color: Colors.black,width: 2),
                          // ),
                          hintText: "No of bricks",
                          hintStyle: TextStyle(color: Colors.black),
                          // border: InputBorder.none
                        ),
                      ),
                      SizedBox(height: 15,),

                      TextFormField(
                        validator: MultiValidator([
                          RequiredValidator(
                              errorText: 'Field is required'),
                        ]),
                        style: TextStyle(

),
                        controller: _stonecontroller,
                        decoration: InputDecoration(
                          // focusedBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(color: Colors.black,width: 2),
                          // ),
                          hintText: "No of Stone lorries ",
                          hintStyle: TextStyle(color: Colors.black),
                          // border: InputBorder.none
                        ),
                      ),
                      SizedBox(height: 15,),

                      TextFormField(
                        validator: MultiValidator([
                          RequiredValidator(
                              errorText: 'Field is required'),
                        ]),
                        style: TextStyle(

),
                        controller: _aluminiumcontroller,
                        decoration: InputDecoration(
                          // focusedBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(color: Colors.black,width: 2),
                          // ),
                          hintText: "No of Aluminium quantity ",
                          hintStyle: TextStyle(color: Colors.black),
                          // border: InputBorder.none
                        ),
                      ),
                      SizedBox(height: 15,),

                      TextFormField(
                        validator: MultiValidator([
                          RequiredValidator(
                              errorText: 'Field is required'),
                        ]),
                        style: TextStyle(

),
                        controller: _costcontroller,
                        decoration: InputDecoration(
                          // focusedBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(color: Colors.black,width: 2),
                          // ),
                          hintText: "Plot Cost ",
                          hintStyle: TextStyle(color: Colors.black),
                          // border: InputBorder.none
                        ),
                      ),
                      SizedBox(height: 15,),

                      Center(
                        child: GestureDetector(
                          onTap: () {

                            _showPicker(context);
                          },
                          child: Container(
                            // radius: 55,
                            // backgroundColor: Color(0xffFDCF09),
                            child: _image != null
                                ? Image.file(
                                    _image,
                                    // width: 100,
                                    // height: 100,
                                    fit: BoxFit.cover,
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    width: 100,
                                    height: 100,
                                    child: Icon(
                                      Icons.camera_alt,
                                      color: Colors.grey[800],
                                    ),
                                  ),
                          ),
                        ),
                      ),


//                       InkWell(
//                         onTap: () {
//
//                           if (_formKey.currentState.validate()) {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(
//                                 content: Text('Processing Data'),
//                               ),
//                             );
//                             uploadimage();
//
//                           }
//
//                         },
//                         child: Container(
//                           height: 50,
//                           width: MediaQuery.of(context).size.width,
//                           margin: EdgeInsets.symmetric(horizontal: 50),
//                           decoration: BoxDecoration(
//                             color: Colors.cyan[500],
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Submit",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 15,
//
// ),
//                             ),
//                           ),
//                         ),
//                       ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {

                      if (_formKey.currentState.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Processing Data'),
                          ),
                        );
                        uploadimage();

                      }

                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                  //    margin: EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                        color: Colors.cyan[500],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Submit",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,

                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext cc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  _imgFromCamera() async {
    File image = (await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50)) as File;

    setState(() {
      _image = image;
    });
  }

  _imgFromGallery() async {
    File image = (await ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50)) as File;

    setState(() {
      _image = image;
    });
  }
  uploadimage() async {
      FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseStorage storage = FirebaseStorage.instance;
    Reference ref = storage.ref().child("image1" + DateTime.now().toString());
    UploadTask uploadTask = ref.putFile(_image);

    uploadTask.then((res)  async {
      String imagrurl = await ref.getDownloadURL();
      imageUrl = imagrurl;
    }).then((value) async {
     await SaveData(imageUrl);

    });
  }

  void SaveData(String url) {
    DatabaseReference reference = FirebaseDatabase.instance.reference().child("plots").push();
    reference.set({
      "type":Data.type,
      "sqyard": sqyardcontroller.text,
      "room": _roomcontroller.text,
      "bathroom": _bathroomcontroller.text,
      "kitchen" : _kitcheccontroller.text,
      "hall":_hallcontroller.text,
      "floor":_floorcontroller.text,
      "cement": _cementcontroller.text,
      "steel":_steelcontroller.text,
      "sand":_sandcontroller.text,
      "timber": _timbercontroller.text,
      "brick":_brickscontoller.text,
      "stone":_stonecontroller.text,
      "image": url,
      "cost": _costcontroller.text,
      "aluminium":_aluminiumcontroller.text

    }).whenComplete(() {
      Data.requestUid = reference.key;
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Milestone()),
      );
 /*     Fluttertoast.showToast(
          msg: "Submitted",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);*/

    });
  }


}
