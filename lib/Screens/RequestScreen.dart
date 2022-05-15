// import 'dart:math';
//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:homedesignapp/Config.dart';
// import 'package:homedesignapp/List/Inventory_List.dart';
// import 'package:homedesignapp/List/Square_Yard_List.dart';
// import 'package:homedesignapp/Screens/HomeScreen.dart';
// import 'package:homedesignapp/Screens/Home_Design.dart';
// import 'package:homedesignapp/Services/Data.dart';
// import 'package:homedesignapp/global.dart';
//
// class Detail_Selected extends StatefulWidget {
//
//   @override
//   _Detail_SelectedState createState() => _Detail_SelectedState();
// }
//
// class _Detail_SelectedState extends State<Detail_Selected> {
//   bool images ;
//   @override
//   void initState() {
//     int floor =int.parse( oneTwentyYardmodellist.elementAt(0).floor);
//     if(floor==2){
//       images = false;
//     }
//     else{
//       images= true;
//     }
//     super.initState();
//
//   }
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: mainColor,
//           title: Text(
//             'Selected Details',
//             style: TextStyle(
//                 fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
//           ),
//           actions: [
//             IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.power_settings_new),
//             ),
//             IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.account_circle),
//             ),
//           ],
//         ),
//         body: SingleChildScrollView(
//           child: Container(
//             width: MediaQuery.of(context).size.width,
//             child: Column(
//                 children: [
//                   Container(
//                     height: 130,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                         bottomRight: Radius.circular(50),
//                       ),
//                       color: mainColor,
//                     ),
//                     child: Stack(
//                       children: [
//                         Positioned(
//                           top: 40,
//                           left: 0,
//                           child: Container(
//                             height: 60,
//                             width: 230,
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.only(
//                                   topRight: Radius.circular(50),
//                                   bottomRight: Radius.circular(50),
//                                 )),
//                           ),
//                         ),
//                         Positioned(
//                             top: 60,
//                             left: 20,
//                             child: Text(
//                               "Preview",
//                               style: TextStyle(
//                                   fontSize: 26,
//                                   fontWeight: FontWeight.bold,
//                                   color: mainColor),
//                             ))
//                       ],
//                     ),
//                   ),
//                   Padding(padding: const EdgeInsets.all(16.0)),
//                   Container(
//                     height: 500,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(5),
//                       boxShadow: [
//                         BoxShadow(
//                             color: Colors.grey.withOpacity(0.3),
//                             offset: Offset(-10.0, 10.0),
//                             blurRadius: 20.0,
//                             spreadRadius: 4.0),
//                       ],
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(35.0),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(//Data.Squareyard,
//                               oneTwentyYardmodellist.elementAt(0).sqyard,
//                               style: TextSize_SqYard),
//
//
//                           Divider(),
//                           Row(
//                             children: [
//                               Container(
//                                   child: Text(
//                                     "Rooms",
//                                     style: TextStyle(
//                                         fontSize: 18, fontWeight: FontWeight.bold),
//                                   )),
//                               Spacer(),
//                               Container(
//                                   child: Text(
//                                     // Data.Room ?? "null",
//                                     oneTwentyYardmodellist.elementAt(0).floorfirstroom + "+"+ oneTwentyYardmodellist.elementAt(0).floorsecondroom,
//
//                                     style: TextStyle(
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                         color: mainColor),
//                                   )),
//                             ],
//                           ),
//                           Divider(),
//                           Row(
//                             children: [
//                               Container(
//                                   child: Text(
//                                     "Kitchen",
//                                     style: TextStyle(
//                                         fontSize: 18, fontWeight: FontWeight.bold),
//                                   )),
//                               Spacer(),
//                               Container(
//                                   child: Text(
//                                     // Data.Roof ?? "null",
//                                     oneTwentyYardmodellist[0].floorfirstkitchen + "+"+ oneTwentyYardmodellist[0].floorsecondkitchen,
//                                     style: TextStyle(
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                         color: mainColor),
//                                   )),
//                             ],
//                           ),
//                           Divider(),
//                           Row(
//                             children: [
//                               Container(
//                                   child: Text(
//                                     "Hall",
//                                     style: TextStyle(
//                                         fontSize: 18, fontWeight: FontWeight.bold),
//                                   )),
//                               Spacer(),
//                               Container(
//                                   child: Text(
//                                     //  Data.Hall ?? "null",
//                                     oneTwentyYardmodellist.elementAt(0).floorfirsthall + "+"+ oneTwentyYardmodellist.elementAt(0).floorsecondhall,
//                                     style: TextStyle(
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                         color: mainColor),
//                                   )),
//                             ],
//                           ),
//                           Divider(),
//                           Row(
//                             children: [
//                               Container(
//                                   child: Text(
//                                     "Bathroom",
//                                     style: TextStyle(
//                                         fontSize: 18, fontWeight: FontWeight.bold),
//                                   )),
//                               Spacer(),
//                               Container(
//                                   child: Text(
//                                     //  Data.Kitchen ??"null",
//                                     oneTwentyYardmodellist.elementAt(0).floorfirstbathroom + "+"+ oneTwentyYardmodellist.elementAt(0).floorsecondbathroom,
//                                     style: TextStyle(
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                         color: mainColor),
//                                   )),
//                             ],
//                           ),
//                           Divider(),
//                           Row(
//                             children: [
//                               Container(
//                                   child: Text(
//                                     "Floor",
//                                     style: TextStyle(
//                                         fontSize: 18, fontWeight: FontWeight.bold),
//                                   )),
//                               Spacer(),
//                               Container(
//                                   child: Text(
//                                     // Data.Cost ?? "null",
//                                     oneTwentyYardmodellist.elementAt(0).floor,
//                                     style: TextStyle(
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                         color: mainColor),
//                                   )),
//                             ],
//                           ),
//                           Divider(),
//                         ],
//                       ),
//                     ),
//                   ),
//                   images ? Container(
//                     child: Image.asset( oneTwentyYardmodellist.elementAt(0).floorfirstimage),
//                   ): Column(
//                     children: [
//                       Container(
//                         child: Image.asset( oneTwentyYardmodellist.elementAt(0).floorfirstimage),
//                       ),Container(
//                         child: Image.asset( oneTwentyYardmodellist.elementAt(0).floorsecondimage),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 10,),
//                   Padding(
//                     padding: const EdgeInsets.all(18.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(5),
//                         boxShadow: [
//                           BoxShadow(
//                               color: Colors.grey.withOpacity(0.3),
//                               offset: Offset(-10.0, 10.0),
//                               blurRadius: 20.0,
//                               spreadRadius: 4.0),
//                         ],
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Text("Selected Inventory", style: TextSize_SqYard),
//                             SizedBox(height: 10,),
//                             Row(
//
//                               children: [
//                                 SizedBox(width: 7,),
//                                 Expanded(
//                                   child: Column(
//                                     children: [
//                                       Text("Material", style: TextSize_SqYard),
//                                       SizedBox(height: 8,),
//                                       Text(InventoryList.elementAt(0).Material, style: TextSize_SqYard),
//                                       SizedBox(height: 5,),
//
//                                       Text(InventoryList.elementAt(1).Material, style: TextSize_SqYard),
//                                       SizedBox(height: 5,),
//
//                                       Text(InventoryList.elementAt(2).Material, style: TextSize_SqYard),
//                                       SizedBox(height: 5,),
//
//                                       Text(InventoryList.elementAt(3).Material, style: TextSize_SqYard),
//                                       SizedBox(height: 5,),
//
//                                       Text(InventoryList.elementAt(4).Material, style: TextSize_SqYard),
//                                       SizedBox(height: 5,),
//
//                                       Text(InventoryList.elementAt(5).Material, style: TextSize_SqYard),
//                                       SizedBox(height: 5,),
//
//                                       Text(InventoryList.elementAt(6).Material, style: TextSize_SqYard),
//
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(width: 45,),
//                                 Column(
//                                   children: [
//                                     Text("Quality", style: TextSize_SqYard),
//                                     SizedBox(height: 8,),
//                                     Text(InventoryList.elementAt(0).Qualitytype, style: TextSize_SqYard),
//                                     SizedBox(height: 5,),
//
//                                     Text(InventoryList.elementAt(1).Qualitytype, style: TextSize_SqYard),
//                                     SizedBox(height: 5,),
//
//                                     Text(InventoryList.elementAt(2).Qualitytype, style: TextSize_SqYard),
//                                     SizedBox(height: 5,),
//
//                                     Text(InventoryList.elementAt(3).Qualitytype, style: TextSize_SqYard),
//                                     SizedBox(height: 5,),
//
//                                     Text(InventoryList.elementAt(4).Qualitytype, style: TextSize_SqYard),
//                                     SizedBox(height: 5,),
//
//                                     Text(InventoryList.elementAt(5).Qualitytype, style: TextSize_SqYard),
//                                     SizedBox(height: 5,),
//
//                                     Text(InventoryList.elementAt(6).Qualitytype, style: TextSize_SqYard),
//
//                                   ],
//                                 ),
//                                 SizedBox(width: 45,),
//                                 Column(
//                                   children: [
//                                     Text("Cost", style: TextSize_SqYard),
//                                     SizedBox(height: 8,),
//                                     Text(InventoryList[0].Changevalue1, style: TextSize_SqYard),
//                                     SizedBox(height: 5,),
//
//                                     Text(InventoryList[1].Changevalue1, style: TextSize_SqYard),
//                                     SizedBox(height: 5,),
//
//                                     Text(InventoryList[2].Changevalue1, style: TextSize_SqYard),
//                                     SizedBox(height: 5,),
//
//                                     Text(InventoryList[3].Changevalue1, style: TextSize_SqYard),
//                                     SizedBox(height: 5,),
//
//                                     Text(InventoryList[4].Changevalue1, style: TextSize_SqYard),
//                                     SizedBox(height: 5,),
//
//                                     Text(InventoryList[5].Changevalue1, style: TextSize_SqYard),
//                                     SizedBox(height: 5,),
//
//                                     Text(InventoryList[6].Changevalue1, style: TextSize_SqYard),
//
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       GenerateRequest();
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (BuildContext context) => HomeScreen()));
//                     },
//                     child: Container(
//                       height: 50,
//                       width: MediaQuery.of(context).size.width,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         gradient: LinearGradient(
//                           begin: Alignment.topRight,
//                           end: Alignment.bottomLeft,
//                           stops: [0.1, 0.5, 0.7, 0.9],
//                           colors: [
//                             Colors.cyan.shade300,
//                             Colors.cyan.shade400,
//                             Colors.cyan.shade500,
//                             Colors.cyan.shade600,
//                           ],
//                         ),
//                       ),
//                       child: Center(
//                           child: Text(
//                             'Payment ',
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18),
//                           )),
//                     ),
//                   ),
//                 ]),
//           ),
//         ));
//   }
// }
