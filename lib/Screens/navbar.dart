import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/services.dart';
import 'package:homedesignadmin/Screens/ChooseOperation.dart';

import 'History.dart';

Color color = Colors.cyan;
var disp ='';
class BottomNavbar extends StatefulWidget {

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      bottomNavigationBar: CurvedNavigationBar(
        height: 45,
        backgroundColor: Colors.white70,
        items: [
          Icon(Icons.home),
          Icon(Icons.history),
          Icon(Icons.feedback),
          Icon(Icons.logout),
        ],
        onTap: (index){
          setState(() {
            if(index==0){
              // ChooseOperation();
              disp = 'Home';
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChooseOperation()),
              );
              color = Colors.cyan;
            }else if(index==1){
               disp = 'History';
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => History()),
               );
               color = Colors.cyan;
            }else if(index==2){
               disp = 'Feedback';
               color = Colors.cyan;
            }else{
               disp = 'Logout';
               SystemNavigator.pop();
               color = Colors.cyan;
            }
            });
        },
      ),
      body: Container(
        child: Center(
          child: Text(
            disp,
            style: TextStyle(fontSize: 40,color: Colors.white),
          ),
        ),
      ),
    );
  }
}
