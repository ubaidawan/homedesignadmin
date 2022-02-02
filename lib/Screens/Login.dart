import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:homedesignadmin/Screens/ChooseOperation.dart';
import 'package:homedesignadmin/Screens/Signup.dart';
import 'package:homedesignadmin/Widget/Header.dart';

import '../global.dart';

class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  bool _obscureText = true;
  String email, password;
  TextEditingController _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  login()  {

      email = _email.text;
      password = _password.text;
      if(email == "admin@gmail.com" && password == "admin"){
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => ChooseOperation()));
      }else{
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Something went wrongs')));
      }

  }

  void initState() {
    _email = new TextEditingController();
    _password = new TextEditingController();
    _obscureText = !_obscureText;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image:  DecorationImage(
                  image: AssetImage("assets/hdhouse.png"),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(Colors.black12.withOpacity(0.4), BlendMode.dstATop),
                ),
                // color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Header('Login'),
                    Padding(padding: const EdgeInsets.all(50.0)),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: TextFormField(
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20, fontWeight: FontWeight.bold),
                            controller: _email,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(padding: const EdgeInsets.all(25.0)),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: TextFormField(
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20, fontWeight: FontWeight.bold),
                            controller: _password,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                              suffixIcon: IconButton(
                                  color: Colors.black,
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
                                borderRadius: BorderRadius.circular(20),
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.black),

                              // border: InputBorder.none),
                            ),
                            obscureText: !_obscureText,
                          ),
                        )
                      ],
                    ),
                    Padding(padding: const EdgeInsets.all(40.0)),
                    InkWell(
                      onTap: () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text('Processing Data')));
                        login();
                      },
                      child: Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          color: Colors.cyan[400],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
