import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:homedesignadmin/Widget/Header.dart';

class Signup extends StatefulWidget {

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  bool _obscureText = true;
  bool _obscureText1 = true;
  String email, password, confirmpassword, contact, Username,Address;
  DatabaseReference reference =
  FirebaseDatabase.instance.reference().child("Admin");
  final FirebaseAuth _auth = FirebaseAuth.instance;

  TextEditingController _email, _password, _confirmpassword, _contact, _Username, _Address;
  @override
  void initState() {
    _email = new TextEditingController();
    _password = new TextEditingController();
    _confirmpassword = new TextEditingController();
    _contact = new TextEditingController();
    _Username = new TextEditingController();
    _Address= new TextEditingController();
    _obscureText = !_obscureText;
    _obscureText1 = !_obscureText1;
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
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Header('Signup'),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            controller: _Username,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.black, width: 2),
                              ),
                              hintText: "Name",
                              hintStyle: TextStyle(color: Colors.black),
                              // border: InputBorder.none
                            ),
                          ),
                        ),
                        Padding(padding: const EdgeInsets.all(18.0)),
                        Container(
                          decoration: BoxDecoration(),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            controller: _email,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.black, width: 2),
                              ),
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.black),
                              // border: InputBorder.none
                            ),
                          ),
                        ),
                        Padding(padding: const EdgeInsets.all(18.0)),
                        Container(
                          decoration: BoxDecoration(),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            controller: _password,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  icon: Icon(
                                      _obscureText ? Icons.visibility : Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  }),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.black, width: 2),
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.black),
                              // border: InputBorder.none
                            ),
                            obscureText: _obscureText,
                          ),
                        ),
                        Padding(padding: const EdgeInsets.all(18.0)),
                        Container(
                          decoration: BoxDecoration(),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            controller: _confirmpassword,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  icon: Icon(
                                      _obscureText1 ? Icons.visibility : Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText1 = !_obscureText1;
                                    });
                                  }),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.black, width: 2),
                              ),
                              hintText: "Confirm Password",
                              hintStyle: TextStyle(color: Colors.black),
                              // border: InputBorder.none
                            ),
                            obscureText: _obscureText1,
                          ),
                        ),
                        Padding(padding: const EdgeInsets.all(18.0)),
                        Container(
                          decoration: BoxDecoration(),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            controller: _contact,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.black, width: 2),
                              ),
                              hintText: "Contact",
                              hintStyle: TextStyle(color: Colors.black),
                              // border: InputBorder.none
                            ),
                          ),
                        ),
                        Padding(padding: const EdgeInsets.all(18.0)),
                        Container(
                          decoration: BoxDecoration(),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            controller: _Address,
                            decoration: InputDecoration(
                              // focusedBorder: OutlineInputBorder(
                              //   borderSide: BorderSide(color: Colors.black,width: 2),
                              // ),
                              hintText: "Address",
                              hintStyle: TextStyle(color: Colors.black),
                              // border: InputBorder.none
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: const EdgeInsets.all(22.0)),
                    InkWell(
                      onTap: () {
                        if (_formKey.currentState.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Processing Data'),
                            ),
                          );
                          signup();
                          Navigator.pop(context);
                        }
                      },
                      child: Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          color: Colors.cyan[500],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Signup",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> signup() async {
    Username= _Username.text;
    email = _email.text;
    password = _password.text;
    contact = _contact.text;
    //  passportnumber = _passportnumber.text;

    try {
      UserCredential userCredential =
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential != null) {
        String uid = userCredential.user.uid;
        SaveData(uid);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  void SaveData(String userid) {
    reference.child(userid).set({
      "Username": Username,
      "email": email,
      "password": password,
      "contact": contact,
      //  "passportnumber": passportnumber,
    }).then((value) => _showtimer());
  }

  _showtimer() {
    Timer(
      Duration(seconds: 3),
          () {
        // _btnController.success();
      },
    );
  }
}
