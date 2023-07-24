import 'package:flutter/material.dart';
import 'package:play_it/Screens/homePage.dart';
import 'package:play_it/Screens/layouts/layouts.dart';

class Subscription extends StatefulWidget {
   Subscription({Key? key});

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            elevation: 0,
            backgroundColor: Color.fromARGB(255, 1, 98, 143),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_outlined,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 1, 98, 143),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Subscriptions",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              DefaultTabController(
                length: 2,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.825,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 248, 246, 246),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: TabBar(
                          tabs: [
                            Tab(
                              text: "Yearly",
                            ),
                            Tab(
                              text: "Monthly",
                            ),
                          ],
                          labelStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          labelColor:
                              Color.fromARGB(255, 6, 77, 112).withOpacity(1),
                          indicatorColor:
                              Color.fromARGB(255, 6, 77, 112).withOpacity(1),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            // Content for Tab 1
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 60,
                                  width: 150,
                                  // padding: EdgeInsets.all(30.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      border: Border.all(color: Colors.black)),
                                  child: Center(
                                    child: RichText(
                                      text: TextSpan(
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: '\$',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '270',
                                            style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '/year',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 60,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(Icons.check_outlined),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            "9 Accounts ",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                        child: Row(
                                      children: [
                                        Icon(Icons.check_outlined),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Ad free music lestining",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    )),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                        child: Row(
                                      children: [
                                        Icon(Icons.check_outlined),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Play everywhere even offline ",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    )),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                        child: Row(
                                      children: [
                                        Icon(Icons.check_outlined),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Download 2000 songs/9 on a device ",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ))
                                  ],
                                ),
                                SizedBox(
                                  height: 80,
                                ),
                                ElevatedButton(
                                  onPressed: () async {
                                    return showDialog(context: context, builder:( BuildContext context) {
                                      return AlertDialog(
                                        title: Text("Payment Intergation Comming Soon"),
                                      );
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor:
                                        Color.fromARGB(255, 0, 36, 41),
                                    backgroundColor:
                                        Color.fromARGB(255, 79, 162, 201),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 40, vertical: 16),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    // You can add more styles as needed
                                  ),
                                  child: const Text(
                                    "Get Started",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                 SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  width: 400,
                                  height: 40,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(70, 0, 0, 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Get free 1 Month's Trail !",
                                          style: TextStyle(color: Color.fromARGB(255, 17, 14, 14)),
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Layout()));
                                            },
                                            child: Text(
                                              "Click",
                                              style: TextStyle(
                                                  color: Color.fromARGB(255, 17, 14, 14),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.transparent,
                                              elevation: 0,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // Content for Tab 2
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 60,
                                  width: 150,
                                  // padding: EdgeInsets.all(30.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      border: Border.all(color: Colors.black)),
                                  child: Center(
                                    child: RichText(
                                      text: TextSpan(
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: '\$',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '30',
                                            style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '/month',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 60,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(Icons.check_outlined),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            "1 Account ",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                        child: Row(
                                      children: [
                                        Icon(Icons.check_outlined),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Listen to music ad free",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    )),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                        child: Row(
                                      children: [
                                        Icon(Icons.check_outlined),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Play even offline ",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    )),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                        child: Row(
                                      children: [
                                        Icon(Icons.check_outlined),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Download 30 songs on a device ",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ))
                                  ],
                                ),
                                SizedBox(
                                  height: 80,
                                ),
                                ElevatedButton(
                                  onPressed: () async {
                                    return showDialog(context: context, builder:( BuildContext context) {
                                      return AlertDialog(
                                        title: Text("Payment Intergation Comming Soon"),
                                      );
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor:
                                        Color.fromARGB(255, 0, 36, 41),
                                    backgroundColor:
                                        Color.fromARGB(255, 79, 162, 201),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 40, vertical: 16),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    // You can add more styles as needed
                                  ),
                                  child: const Text(
                                    "Get Started",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  width: 400,
                                  height: 40,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(70, 0, 0, 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Get free 1 Month's Trail !",
                                          style: TextStyle(color: Color.fromARGB(255, 17, 14, 14)),
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Layout()));
                                            },
                                            child: Text(
                                              "Click",
                                              style: TextStyle(
                                                  color: Color.fromARGB(255, 17, 14, 14),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.transparent,
                                              elevation: 0,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
