import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:homedesignadmin/Screens/Milestone.dart';
import 'package:homedesignadmin/Services/Data.dart';
import 'package:image_picker/image_picker.dart';

class CommercialPlotSubmission extends StatefulWidget {
  // const CommercialPlotSubmission({Key key}) : super(key: key);

  @override
  _CommercialPlotSubmissionState createState() =>
      _CommercialPlotSubmissionState();
}

class _CommercialPlotSubmissionState extends State<CommercialPlotSubmission> {
  File _image;
  String imageUrl;

  TextEditingController _sqfeetcontroller, _costcontroller;

  @override
  void initState() {
    _sqfeetcontroller = new TextEditingController();
    _costcontroller = new TextEditingController();
    super.initState();
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: SafeArea(
            child: Scaffold(
                body: SingleChildScrollView(
                    child: Container(
                        color: Colors.black26,
                        child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(children: [
                                    Padding(
                                        padding: const EdgeInsets.all(18.0)),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                        color: Colors.grey,
                                      ))),
                                      child: TextFormField(
                                        validator: MultiValidator([
                                          RequiredValidator(
                                              errorText: 'Field is required'),
                                        ]),
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                        controller: _sqfeetcontroller,
                                        decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black, width: 2),
                                          ),
                                          hintText: "Sq Feet",
                                          hintStyle:
                                              TextStyle(color: Colors.black),
                                          // border: InputBorder.none
                                        ),
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.all(18.0)),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                        color: Colors.grey,
                                      ))),
                                      child: TextFormField(
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                        controller: _costcontroller,
                                        decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black, width: 2),
                                          ),
                                          hintText: "Total Cost",
                                          hintStyle:
                                              TextStyle(color: Colors.black),
                                          // border: InputBorder.none
                                        ),
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.all(18.0)),
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
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.fitHeight,
                                                )
                                              : Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey[200],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50)),
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
                                    Padding(
                                        padding: const EdgeInsets.all(18.0)),
                                    InkWell(
                                      onTap: () {
                                        if (_formKey.currentState.validate()) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              content: Text('Processing Data'),
                                            ),
                                          );
                                          uploadimage();

                                        }
                                      },
                                      child: Container(
                                        height: 50,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 50),
                                        decoration: BoxDecoration(
                                          color: Colors.cyan[500],
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Submit",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                                ])))))));
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

    uploadTask.then((res) async {
      String imagrurl = await ref.getDownloadURL();
      imageUrl = imagrurl;
    }).then((value) {
      SaveData(imageUrl);
    });
  }

  void SaveData(String url) {
    DatabaseReference reference =
        FirebaseDatabase.instance.reference().child("plots").push();
    reference.set({
      "type": Data.type,
      "sqfeet": _sqfeetcontroller.text,
      "image": url,
      "cost": _costcontroller.text,
    }).whenComplete(() {
      Data.requestUid = reference.key;
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Milestone()),
      );
      /*Navigator.pop(context);
      Fluttertoast.showToast(
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
