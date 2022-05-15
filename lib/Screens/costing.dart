import 'package:flutter/material.dart';
import 'package:homedesignadmin/Global.dart';
import 'package:homedesignadmin/Screens/ChooseOperation.dart';
import 'package:homedesignadmin/Screens/PriceQuotation.dart';
import 'package:homedesignadmin/Widget/Header.dart';

import 'Config.dart';

class Costing extends StatefulWidget {
  const Costing({Key key}) : super(key: key);

  @override
  _CostingState createState() => _CostingState();
}

class _CostingState extends State<Costing> {
  bool _visible = false;
  @override
  String _roomcostAluminium = 'Aluminium';
  String _bathroomcostAluminium = 'Aluminium';
  String _hallcostAluminium = 'Aluminium';
  String _kitchencostAluminium = 'Aluminium';
  String _floorcostAluminium = 'Aluminium';
  String _roomcostCement = 'Cement';
  String _bathroomcostCement = 'Cement';
  String _hallcostCement = 'Cement';
  String _kitchencostCement = 'Cement';
  String _floorcostCement = 'Cement';
  String _roomcostSteel = 'Steel';
  String _bathroomcostSteel = 'Steel';
  String _hallcostSteel = 'Steel';
  String _kitchencostSteel = 'Steel';
  String _floorcostSteel = 'Steel';
  String _roomcostSand = 'Sand';
  String _bathroomcostSand = 'Sand';
  String _hallcostSand = 'Sand';
  String _kitchencostSand = 'Sand';
  String _floorcostSand = 'Sand';
  String _roomcostBricks = 'Bricks';
  String _bathroomcostBricks = 'Bricks';
  String _hallcostBricks = 'Bricks';
  String _kitchencostBricks = 'Bricks';
  String _floorcostBricks = 'Bricks';
  String _roomcostWood = 'Wood';
  String _bathroomcostWood = 'Wood';
  String _hallcostWood = 'Wood';
  String _kitchencostWood = 'Wood';
  String _floorcostWood = 'Wood';
  String _roomcostStone = 'Stone';
  String _bathroomcostStone = 'Stone';
  String _hallcostStone = 'Stone';
  String _kitchencostStone = 'Stone';
  String _floorcostStone = 'Stone';


  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.cyan,
          title: Text(
            'Construction',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.power_settings_new),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle),
            ),
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                    ),
                    color: mainColor,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 40,
                        left: 0,
                        child: Container(
                          height: 60,
                          width: 200,
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
                            "Construction",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: mainColor,
                            ),
                          ))
                    ],
                  ),
                ),
                Padding(//
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [

                      Column(
                        children: [
                          Text('Room Cost',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Row(
                            children: [

                              Container(
                                width: MediaQuery.of(context).size.width /2 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _roomcostAluminium,
                                    items: <String>[
                                      'Aluminium',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _roomcostAluminium = newVal;
                                        roomcostAluminium = int.parse(_roomcostAluminium);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;

                                      });
                                    }),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                width: MediaQuery.of(context).size.width /3 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _roomcostSand,
                                    items: <String>[
                                      'Sand',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _roomcostSand= newVal;
                                        roomcostSand = int.parse(_roomcostSand);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_roomcostSand);
                                      });
                                    }),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width /3 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _roomcostCement,
                                    items: <String>[
                                      'Cement',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _roomcostCement = newVal;
                                        roomcostCement = int.parse(_roomcostCement);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_roomcostCement);
                                      });
                                    }),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                width: MediaQuery.of(context).size.width /2 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _roomcostSteel,
                                    items: <String>[
                                      'Steel',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _roomcostSteel = newVal;
                                        roomcostSteel = int.parse(_roomcostSteel);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_roomcostSteel);
                                      });
                                    }),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width /2 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _roomcostBricks,
                                    items: <String>[
                                      'Bricks',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _roomcostBricks = newVal;
                                        roomcostBricks = int.parse(_roomcostBricks);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_roomcostBricks);
                                      });
                                    }),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                width: MediaQuery.of(context).size.width /3 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _roomcostWood,
                                    items: <String>[
                                      'Wood',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _roomcostWood = newVal;
                                        roomcostWood = int.parse(_roomcostWood);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_roomcostWood);
                                      });
                                    }),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width /3 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _roomcostStone,
                                    items: <String>[
                                      'Stone',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _roomcostStone= newVal;
                                        roomcostStone = int.parse(_roomcostStone);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_roomcostStone);
                                      });
                                    }),
                              ),

                            ],
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Column(
                        children: [
                          Text('Bathroom Cost',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Row(
                            children: [

                              Container(
                                width: MediaQuery.of(context).size.width /2 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _bathroomcostAluminium,
                                    items: <String>[
                                      'Aluminium',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _bathroomcostAluminium = newVal;
                                        bathroomcostAluminium = int.parse(_bathroomcostAluminium);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;

                                      });
                                    }),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                width: MediaQuery.of(context).size.width /3 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _bathroomcostSand,
                                    items: <String>[
                                      'Sand',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _bathroomcostSand= newVal;
                                        bathroomcostSand= int.parse(_bathroomcostSand);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_bathroomcostSand);
                                      });
                                    }),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width /3 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _bathroomcostCement,
                                    items: <String>[
                                      'Cement',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _bathroomcostCement = newVal;
                                        bathroomcostCement = int.parse(_bathroomcostCement);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_bathroomcostCement);
                                      });
                                    }),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                width: MediaQuery.of(context).size.width /2 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _bathroomcostSteel,
                                    items: <String>[
                                      'Steel',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _bathroomcostSteel = newVal;
                                        bathroomcostSteel= int.parse(_bathroomcostSteel);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_bathroomcostSteel);
                                      });
                                    }),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width /2 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _bathroomcostBricks,
                                    items: <String>[
                                      'Bricks',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _bathroomcostBricks = newVal;
                                        bathroomcostBricks = int.parse(_bathroomcostBricks);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_bathroomcostBricks);
                                      });
                                    }),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                width: MediaQuery.of(context).size.width /3 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _bathroomcostWood,
                                    items: <String>[
                                      'Wood',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _bathroomcostWood = newVal;
                                        bathroomcostWood = int.parse(_bathroomcostWood);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_bathroomcostWood);
                                      });
                                    }),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width /3 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _bathroomcostStone,
                                    items: <String>[
                                      'Stone',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _bathroomcostStone= newVal;
                                        bathroomcostStone = int.parse(_bathroomcostStone);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_bathroomcostStone);
                                      });
                                    }),
                              ),

                            ],
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Column(
                        children: [
                          Text('Hall Cost',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Row(
                            children: [

                              Container(
                                width: MediaQuery.of(context).size.width /2 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _hallcostAluminium,
                                    items: <String>[
                                      'Aluminium',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _hallcostAluminium = newVal;
                                        hallcostAluminium = int.parse(_hallcostAluminium);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                      });
                                    }),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                width: MediaQuery.of(context).size.width /3 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _hallcostSand,
                                    items: <String>[
                                      'Sand',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _hallcostSand= newVal;
                                        hallcostSand = int.parse(_hallcostSand);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_hallcostSand);
                                      });
                                    }),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width /3 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _hallcostCement,
                                    items: <String>[
                                      'Cement',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _hallcostCement = newVal;
                                        hallcostCement = int.parse(_hallcostCement);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_hallcostCement);
                                      });
                                    }),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                width: MediaQuery.of(context).size.width /2 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _hallcostSteel,
                                    items: <String>[
                                      'Steel',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _hallcostSteel = newVal;
                                        hallcostSteel = int.parse(_hallcostSteel);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_hallcostSteel);
                                      });
                                    }),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width /2 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _hallcostBricks,
                                    items: <String>[
                                      'Bricks',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _hallcostBricks = newVal;
                                        hallcostBricks = int.parse(_hallcostBricks);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_hallcostBricks);
                                      });
                                    }),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                width: MediaQuery.of(context).size.width /3 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _hallcostWood,
                                    items: <String>[
                                      'Wood',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _hallcostWood = newVal;
                                        hallcostWood = int.parse(_hallcostWood);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_hallcostWood);
                                      });
                                    }),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width /3 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _hallcostStone,
                                    items: <String>[
                                      'Stone',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _hallcostStone= newVal;
                                        hallcostStone = int.parse(_hallcostStone);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_hallcostStone);
                                      });
                                    }),
                              ),

                            ],
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Column(
                        children: [
                          Text('Kitchen Cost',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Row(
                            children: [

                              Container(
                                width: MediaQuery.of(context).size.width /2 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _kitchencostAluminium,
                                    items: <String>[
                                      'Aluminium',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _kitchencostAluminium = newVal;
                                        kitchencostAluminium = int.parse(_kitchencostAluminium);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_kitchencostAluminium);
                                      });
                                    }),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                width: MediaQuery.of(context).size.width /3 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _kitchencostSand,
                                    items: <String>[
                                      'Sand',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _kitchencostSand= newVal;
                                        kitchencostSand = int.parse(_kitchencostSand);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_kitchencostSand);
                                      });
                                    }),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width /3 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _kitchencostCement,
                                    items: <String>[
                                      'Cement',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _kitchencostCement = newVal;
                                        kitchencostCement = int.parse(_kitchencostCement);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_kitchencostCement);
                                      });
                                    }),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                width: MediaQuery.of(context).size.width /2 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _kitchencostSteel,
                                    items: <String>[
                                      'Steel',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _kitchencostSteel = newVal;
                                        kitchencostSteel = int.parse(_kitchencostSteel);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_kitchencostSteel);
                                      });
                                    }),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width /2 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _kitchencostBricks,
                                    items: <String>[
                                      'Bricks',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _kitchencostBricks = newVal;
                                        kitchencostBricks = int.parse(_kitchencostBricks);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_kitchencostBricks);
                                      });
                                    }),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                width: MediaQuery.of(context).size.width /3 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _kitchencostWood,
                                    items: <String>[
                                      'Wood',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _kitchencostWood = newVal;
                                        kitchencostWood = int.parse(_kitchencostWood);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_kitchencostWood);
                                      });
                                    }),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width /3 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _kitchencostStone,
                                    items: <String>[
                                      'Stone',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _kitchencostStone= newVal;
                                        kitchencostStone = int.parse(_kitchencostStone);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_kitchencostStone);
                                      });
                                    }),
                              ),

                            ],
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Column(
                        children: [
                          Text('Floor Cost',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Row(
                            children: [

                              Container(
                                width: MediaQuery.of(context).size.width /2 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _floorcostAluminium,
                                    items: <String>[
                                      'Aluminium',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _floorcostAluminium = newVal;
                                        floorcostAluminium = int.parse(_floorcostAluminium);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_floorcostAluminium);
                                      });
                                    }),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                width: MediaQuery.of(context).size.width /3 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _floorcostSand,
                                    items: <String>[
                                      'Sand',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _floorcostSand= newVal;
                                        floorcostSand = int.parse(_floorcostSand);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_floorcostSand);
                                      });
                                    }),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width /3 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _floorcostCement,
                                    items: <String>[
                                      'Cement',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _floorcostCement = newVal;
                                        floorcostCement = int.parse(_floorcostCement);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_floorcostCement);
                                      });
                                    }),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                width: MediaQuery.of(context).size.width /2 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _floorcostSteel,
                                    items: <String>[
                                      'Steel',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _floorcostSteel = newVal;
                                        floorcostSteel = int.parse(_floorcostSteel);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_floorcostSteel);
                                      });
                                    }),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width /2 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _floorcostBricks,
                                    items: <String>[
                                      'Bricks',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _floorcostBricks= newVal;
                                        floorcostBricks = int.parse(_floorcostBricks);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_floorcostBricks);
                                      });
                                    }),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                width: MediaQuery.of(context).size.width /3 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _floorcostWood,
                                    items: <String>[
                                      'Wood',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _floorcostWood = newVal;
                                        floorcostWood = int.parse(_floorcostWood);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_floorcostWood);
                                      });
                                    }),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width /3 ,
                                child:  DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 17,
                                    elevation: 16,
                                    style: TextStyle(color: Colors.cyan),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: Colors.grey[800]),
                                    ),
                                    value: _floorcostStone,
                                    items: <String>[
                                      'Stone',
                                      '1',
                                      '2',
                                      '3',
                                    ].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        _floorcostStone= newVal;
                                        floorcostStone = int.parse(_floorcostStone);
                                        //     oneTwentyYardmodellist[1].floorfirstbathroom = _BATH;
                                        print(_floorcostStone);
                                      });
                                    }),
                              ),

                            ],
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      InkWell(
                        onTap: ()  async {
                      //     // GenerateRequest();
                          await SubmitQuotation();
                          setState(() {
                            _visible = true;
                          });


                        },
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              stops: [0.1, 0.5, 0.7, 0.9],
                              colors: [
                                Colors.cyan.shade300,
                                Colors.cyan.shade400,
                                Colors.cyan.shade500,
                                Colors.cyan.shade600,
                              ],
                            ),
                          ),
                          child: Center(
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              )),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                       InkWell(
                          onTap: ()  {
                            //     // GenerateRequest();


                          },
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                stops: [0.1, 0.5, 0.7, 0.9],
                                colors: [
                                  Colors.cyan.shade300,
                                  Colors.cyan.shade400,
                                  Colors.cyan.shade500,
                                  Colors.cyan.shade600,
                                ],
                              ),
                            ),
                            child: Center(
                                child: Text(
                                  'move Forward',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )),
                          ),
                        ),


                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void SubmitQuotation() {

    aluminiumcost = int.parse(residentialmodellist[position].aluminium.split("+").last);

    brickscost = int.parse(residentialmodellist[position].brick.split("+").last);

    cementcost = int.parse(residentialmodellist[position].cement.split("+").last);

    sandcost = int.parse(residentialmodellist[position].sand.split("+").last);

    steelcost = int.parse(residentialmodellist[position].steel.split("+").last);

    stonecost = int.parse(residentialmodellist[position].stone.split("+").last);

    woodcost = int.parse(residentialmodellist[position].wood.split("+").last);
    totalrooms = int.parse(residentialmodellist[position].room.split("+").elementAt(0)) +int.parse( residentialmodellist[position].room.split("+").elementAt(1));
    totalbathroom = int.parse(residentialmodellist[position].bathroom.split("+").elementAt(0)) + int.parse( residentialmodellist[position].bathroom.split("+").elementAt(1));
    totalkitchen = int.parse(residentialmodellist[position].kitchen.split("+").elementAt(0)) + int.parse( residentialmodellist[position].kitchen.split("+").elementAt(1));
    totalhall = int.parse(residentialmodellist[position].hall.split("+").elementAt(0)) + int.parse( residentialmodellist[position].hall.split("+").elementAt(1));
    totalfloor = int.parse(residentialmodellist[position].floor);
    // calculation individual item.....

    roomcost =((roomcostAluminium * aluminiumcost)+(roomcostSand * sandcost)+ (roomcostCement * cementcost)+ (roomcostSteel * steelcost)+
        (roomcostBricks * brickscost) + (roomcostWood * woodcost)+ (roomcostStone * stonecost));
    bathroomcost =((bathroomcostAluminium * aluminiumcost)+(bathroomcostSand * sandcost)+ (bathroomcostCement * cementcost)+ (bathroomcostSteel * steelcost)+
        (bathroomcostBricks * brickscost) + (bathroomcostWood * woodcost)+ (bathroomcostStone * stonecost));
    kitchencost =((kitchencostAluminium * aluminiumcost)+(kitchencostSand * sandcost)+ (kitchencostCement * cementcost)+ (kitchencostSteel * steelcost)+
        (kitchencostBricks * brickscost) + (kitchencostWood * woodcost)+ (kitchencostStone * stonecost));
    hallcost =((hallcostAluminium * aluminiumcost)+(hallcostSand * sandcost)+ (hallcostCement * cementcost)+ (hallcostSteel * steelcost)+
        (hallcostBricks * brickscost) + (hallcostWood * woodcost)+ (hallcostStone * stonecost));
    floorcost =((floorcostAluminium * aluminiumcost)+(floorcostSand * sandcost)+ (floorcostCement * cementcost)+ (floorcostSteel * steelcost)+
        (floorcostBricks * brickscost) + (floorcostWood * woodcost)+ (floorcostStone * stonecost));

    // calculate total item wise cost......

    totalroomcost = roomcost * totalrooms;
    totalbathroomcost = bathroomcost * totalbathroom;
    totalkitchencost = kitchencost * totalkitchen;
    totalhallcost = hallcost * totalhall;
    totalfloorcost = floorcost * totalfloor;


    // calculate total price........
    totalquotation = totalroomcost + totalbathroomcost + totalkitchencost + totalhallcost + totalfloorcost;
    labourcost = (totalquotation/4) ;
    machinerycost = (totalquotation /3) ;


    _visible = true;
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => Price()));
  }
}
