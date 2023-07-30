import 'package:flutter/material.dart';
// import 'package:play_it/Screens/homePage.dart';
import 'package:play_it/Screens/setinngs/accountSettings.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool pushNotification = true;
  bool shuffle = false;
  bool drakmode = false;
  bool offline = false;

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
                SizedBox(
                  height: 20,
                ),
                ListView(
                  padding: EdgeInsets.all(8.0),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Card(
                      color: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                               Color(0xFF4C6B6B),
                              Color(0xFF102222),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: SwitchListTile(
                          title: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Text(
                                "Push Notification",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          value: pushNotification,
                          onChanged: (value) {
                            setState(() {
                              pushNotification = value;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      color: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF4C6B6B),
                              Color(0xFF102222),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: SwitchListTile(
                          title: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 130),
                              child: Text(
                                "Shuffle",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          value: shuffle,
                          onChanged: (value) {
                            setState(() {
                              shuffle = value;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF4C6B6B),
                              Color(0xFF102222),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          label: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Center(
                                  child: Text(
                                    'Audio Settings',
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Center(
                                child: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          icon: SizedBox.shrink(),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            elevation: 0,
                          ),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF4C6B6B),
                              Color(0xFF102222),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.0, 1.0],
                            transform: GradientRotation(304 * (3.141592 / 180)),
                          ),
                        ),
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          label: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Center(
                                  child: Text(
                                    'Preferred Language',
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Center(
                                child: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          icon: SizedBox.shrink(),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            elevation: 0,
                          ),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                             Color(0xFF4C6B6B),
                              Color(0xFF102222),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: ElevatedButton.icon(
                          onPressed: () {
                           Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AccountSettings()));
                          },
                          label: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Center(
                                  child: Text(
                                    'Account Settings',
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Center(
                                child: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          icon: SizedBox.shrink(),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            elevation: 0,
                          ),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      color: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                               Color(0xFF4C6B6B),
                              Color(0xFF102222),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: SwitchListTile(
                          title: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 140),
                              child: Text(
                                "Offline",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          value: offline,
                          onChanged: (value) {
                            setState(() {
                              offline = value;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      color: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF4C6B6B),
                              Color(0xFF102222),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: SwitchListTile(
                          title: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 110),
                              child: Text(
                                "Dark Mode",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          value: drakmode,
                          onChanged: (value) {
                            setState(() {
                              drakmode = value;
                            });
                          },
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
    );
  }
}
