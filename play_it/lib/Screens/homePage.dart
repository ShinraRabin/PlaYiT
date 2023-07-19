import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff00525d),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.headphones,
                  size: 24,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          backgroundColor: Color(0xff00525d),
          body: Container(
            child: Column(
              children: [
                //searchBox
                Container(
                  width: 200,
                  height: 40,
                  child: TextField(
                    
                    decoration: InputDecoration(

                      hintText: 'Search....',
                      hintStyle: TextStyle(fontStyle: FontStyle.italic),
                      suffixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.white.withOpacity(1),
                      contentPadding:EdgeInsets.only(top: 10.0,bottom: 5.0, left: 10.0) ,
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(100)))
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  child:Column(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                      
                        child: const Text('Start Listening......', style: TextStyle(
                          fontStyle: FontStyle.normal,fontSize: 25,fontWeight: FontWeight.bold, color: Colors.white70,
                        ),),
                    
                      ),
                    )

                  ]) ,
                ),
                Container(),
                Container()
              ],
            ),
          ),
          // body: Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Column(
          //     children: [

          //     Container(
          //       width: 200,
          //       height: 40,
          //       decoration: BoxDecoration(
          //         border: Border.all(),
          //         color: Colors.white,
          //         borderRadius: BorderRadius.circular(40.0),
          //       ),
          //       child: Stack(
          //         alignment: Alignment.center,
          //         children: [
          //           Align(
          //             alignment: Alignment.centerRight,
          //             child: Padding(
          //               padding: EdgeInsets.only(right: 8.0),
          //               child: Icon(Icons.search),
          //             ),
          //           ),
          //           TextField(
          //             decoration: InputDecoration(
          //               hintText: 'Search......',
          //               border: OutlineInputBorder(
          //                 borderRadius: BorderRadius.circular(40.0),
          //               ),
          //             ),
          //           )
          //         ],
          //       ),
          //     ),
          //     SizedBox(
          //       height: 16.0,
          //     ),
          //     Container(
          //       child: Text("Start Listening...",
          //           style: TextStyle(
          //               color: Colors.white10.withOpacity(1),
          //               fontSize: 18.0)),
          //     )
          //   ]),
          // )),
    ));
  }
}
