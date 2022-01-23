// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, prefer_const_constructors_in_immutables, non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final backColor = Color(0xFFF9F9F9);
  final darkRed = Color(0xFFA70803);
  final lightRed = Color(0xFFC80808);
  final imageBackColor = Color(0xFFFEE3E2);
  final listColor = Color(0xFFFFD4D0);
  final listHeadColor = Color(0xFFB21E10);
  final toogleColor = Color(0xFF44BC57);
  final iconColor = Color(0xFFEBB4B4);
  final listBackColor = Color(0xFFFFD4D0);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: backColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [darkRed, lightRed],
                      ),
                    ),
                    height: height * 0.28,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: height * 0.05,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      border: Border.all(
                                        color: Colors.white,
                                      ),
                                    ),
                                    child: FittedBox(
                                      child: Image.asset(
                                        'images/meal.png',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.03,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Restaurant name',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15)),
                                      SizedBox(
                                        height: height * 0.005,
                                      ),
                                      Text('Lorem ipsum dolorr sit amet ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12)),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Time : ',
                                        style: TextStyle(
                                            color: Colors.white54,
                                            fontSize: 10),
                                      ),
                                      Text(
                                        '9 Am - 8 Pm',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.005,
                                  ),
                                  ToggleSwitch(
                                    fontSize: 8,
                                    minWidth: width * 0.08,
                                    minHeight: height * 0.02,
                                    initialLabelIndex: 0,
                                    cornerRadius: 20.0,
                                    activeFgColor: Colors.white,
                                    activeBgColor: [Colors.green],
                                    inactiveBgColor: Colors.white10,
                                    inactiveFgColor: Colors.white,
                                    totalSwitches: 2,
                                    labels: ['Open', 'Close'],
                                    iconSize: 30.0,
                                    borderColor: [Colors.white30],
                                    dividerColor: Colors.blueGrey,
                                    onToggle: (index) {
                                      print('switched to: $index');
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.025,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.delivery_dining,
                                    color: iconColor,
                                    size: 22,
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Text(
                                    'Fast Delivery',
                                    style: TextStyle(
                                        color: Colors.white60, fontSize: 11),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.alarm,
                                    color: iconColor,
                                    size: 22,
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Text(
                                    '25 - 30 min',
                                    style: TextStyle(
                                        color: Colors.white60, fontSize: 11),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: iconColor,
                                    size: 22,
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Text(
                                    'Live Tracking',
                                    style: TextStyle(
                                        color: Colors.white60, fontSize: 11),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 7.0,
                            ),
                          ]),
                      margin: EdgeInsets.only(top: height * 0.18),
                      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                      height: height * 0.19,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text(
                            'Orders -',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 13),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: height * 0.13,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (ctx, i) =>
                                  OrdersList(width, height),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 7.0,
                        ),
                      ]),
                  padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                  height: height * 0.19,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        'Restaurant Offers -',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: height * 0.15,
                              width: width * 0.85,
                              child: ListView.builder(
                                itemCount: 10,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (ctx, i) => SizedBox(
                                  height: height * 0.12,
                                  width: width * 0.22,
                                  child: Image.asset(
                                    'images/discount.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            )
                          ]),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Text(
                  'Order Details -',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Container(
                  height: height * 0.05,
                  padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                  color: listHeadColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '# Order ID',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Date',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Dish',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Veg/Non-Veg',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Price',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: height * 0.2,
                child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (ctx, i) => ListTile(ctx: ctx, index: i),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget OrdersList(double width, double height) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: width * 0.13,
                height: height * 0.10,
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(blurRadius: 7, color: imageBackColor)],
                  color: imageBackColor,
                  shape: BoxShape.circle,
                ),
              ),
              Positioned(
                top: height * 0.013,
                child: SizedBox(
                  width: width * 0.13,
                  height: height * 0.07,
                  child: Image.asset(
                    'images/food.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: width * 0.02),
              Text(
                'Order id - ',
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
              Text(
                '# 223134',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: width * 0.02),
              Text(
                'Invoice no. - ',
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
              Text(
                '223134',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ListTile extends StatefulWidget {
  final BuildContext ctx;
  final int index;
  ListTile({required this.ctx, required this.index});
  @override
  _ListTileState createState() => _ListTileState();
}

class _ListTileState extends State<ListTile> {
  bool num = false;

  @override
  Widget build(BuildContext context) {
    if (widget.index % 2 == 0) {
      setState(() {
        num = true;
      });
    }

    final height = MediaQuery.of(widget.ctx).size.height;
    final width = MediaQuery.of(widget.ctx).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: Container(
        height: height * 0.05,
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        color: num ? Color(0xFFF5F5F5) : Color(0xFFFFD4D0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '# 223134',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
              ),
            ),
            Text(
              'Loreum Ipsum',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
              ),
            ),
            Text(
              'Loreum Ipsum',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(
                        Icons.crop_square_sharp,
                        color: Colors.green,
                        size: 20,
                      ),
                      Icon(Icons.circle, color: Colors.green, size: 5),
                    ],
                  ),
                  SizedBox(width: width * 0.01),
                  Text(
                    'Veg',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Price',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
TabBar(
              unselectedLabelColor: Colors.redAccent,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.redAccent),
              tabs: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.redAccent, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("APPS"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.redAccent, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("MOVIES"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.redAccent, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("GAMES"),
                    ),
                  ),
                ),
              ]),
        ),
        body: TabBarView(children: [
          Icon(Icons.apps),
          Icon(Icons.movie),
          Icon(Icons.games),
        ]),
      ))
 */