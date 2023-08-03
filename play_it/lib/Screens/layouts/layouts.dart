import 'package:flutter/material.dart';
import 'package:play_it/Screens/Bottom NAV/favrioutesPagges.dart';
import 'package:play_it/Screens/Bottom NAV/settings.dart';
import 'package:play_it/Screens/Login/Login.dart';
import 'package:play_it/Screens/homePage.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _selectedIndex = 0;

  // Add your page widgets here (e.g., HomeScreen, FavoritesScreen, ProfileScreen)
  final List<Widget> _pages = [
    const HomePage(),
    const FavoritesPage(),
    const Settings(),
    const LoginScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 1, 98, 143),
                  ),
                  child: Center(
                    child: Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Login'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                ),
              ],
            ),
          ),
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: AppBar(
              elevation: 0,
              backgroundColor: const Color.fromARGB(255, 1, 98, 143),
              // leading: _selectedIndex == 0
              //     ? null
              //     : IconButton(
              //         icon: Icon(Icons.arrow_back),
              //         onPressed: () => _onItemTapped(0),
              //       ),
              actions: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.headphones_outlined,
                    size: 34,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          body: _pages[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 1, 98, 143),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(0.6),
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'Home'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.bookmarks_outlined), label: 'Favorites'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.settings_outlined), label: 'Settings'),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
