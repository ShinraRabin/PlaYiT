import 'package:flutter/material.dart';

class Subscription extends StatefulWidget {
  const Subscription({Key? key});

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
                  Navigator.pop(
                      context); // Navigate back when the icon is pressed
                },
              ),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 1, 98, 143),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Subscriptions",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                // padding: EdgeInsets.all(20.0),
                width: MediaQuery.of(context).size.width *
                    1,
                height: MediaQuery.of(context).size.height * 0.825,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 248, 246, 246),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TabBarView(children: [
                  Text("Monthly", style: TextStyle(),)
                ]),
              ),
            ],
          )),
    );
  }
}
