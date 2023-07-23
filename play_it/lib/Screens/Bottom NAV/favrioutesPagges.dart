import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  int selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 98, 143),
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 0),
                  height: 70, // Set the desired height for the search box
                  color: Color.fromARGB(255, 236, 236, 236).withOpacity(0),
                  child: Center(
                    child: Container(
                      width: 250,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          hintStyle: TextStyle(fontStyle: FontStyle.italic),
                          suffixIcon: Icon(Icons.search),
                          filled: true,
                          fillColor: Colors.white.withOpacity(1),
                          contentPadding: EdgeInsets.only(
                            top: 10.0,
                            bottom: 5.0,
                            left: 10.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value!;
                              });
                            },
                          ),
                          Text(
                            'SELECT ALL ITEMS',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Add your delete logic here
                        },
                        label: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.delete_forever_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              'DELETE',
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                        icon: SizedBox.shrink(),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          elevation: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 8, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            disabledBackgroundColor: Colors.transparent,
                            elevation: 0,
                          ),
                          child: Text(
                            'HipHop',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            disabledBackgroundColor: Colors.transparent,
                            elevation: 0,
                          ),
                          child: Text(
                            "Pop",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            disabledBackgroundColor: Colors.transparent,
                            elevation: 0,
                          ),
                          child: Text(
                            "Rock",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            disabledBackgroundColor: Colors.transparent,
                            elevation: 0,
                          ),
                          child: Text(
                            "Classical",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 10,
                  color: Colors.black,
                  thickness: 1.5,
                ),
                Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
