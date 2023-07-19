import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff00525d),
          ),
          backgroundColor: Color(0xff00525d),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                constraints: BoxConstraints(maxWidth: 200),
                child: Column(children: [
                  Container(
                    constraints: BoxConstraints(maxHeight: 40),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(Icons.search),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Search......',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          )),
    );
  }
}
