import 'package:flutter/material.dart';
import 'package:play_it/Screens/Bottom NAV/favrioutesPagges.dart';
import 'package:play_it/Screens/Bottom NAV/settings.dart';
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
    HomePage(),
    FavoritesPage(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(50), 
          child: AppBar(
            elevation: 0, 
            backgroundColor: Color.fromARGB(255, 1, 98, 143),
             leading: _selectedIndex == 0
                ? null 
                : IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () => _onItemTapped(0), 
                  ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
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
             backgroundColor: Color.fromARGB(255, 1, 98, 143),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(0.6),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.bookmark_outlined), label: 'Favorites'),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
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





