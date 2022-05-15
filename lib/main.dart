import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:homedesignadmin/Screens/ChooseOperation.dart';
import 'package:homedesignadmin/Screens/Login.dart';
import 'package:homedesignadmin/Screens/Milestone.dart';
import 'package:homedesignadmin/Screens/PriceQuotation.dart';
import 'package:homedesignadmin/Screens/ResidentialPlotSubmission.dart';
import 'package:homedesignadmin/Screens/Splash.dart';
import 'package:homedesignadmin/Screens/navbar.dart';


import 'Screens/CommercialREQview.dart';
import 'Screens/ResidencialReqView.dart';
import 'Screens/costing.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // home: SelectType(),
        // home: Milestone(),
       // home: ChooseOperation(),
      home: Login(),
       //home: Price(),
      // home: Costing(),
      //    home: BottomNavbar(),
      // home:SelectRequest(),
    );
  }
}