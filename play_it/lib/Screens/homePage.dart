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
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 98, 143),
      body:Stack(
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
                  contentPadding:
                      EdgeInsets.only(top: 10.0, bottom: 5.0, left: 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                ),
              ),
            ),
          ),
        ),
         SizedBox(height: 10),
            // First Row
            Padding(
              padding: const EdgeInsets.only(top:5),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15), // Add left padding
                      child: Container(
                        child: const Text(
                          'Start Listening..',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis
                        .horizontal, // Set the scroll direction to horizontal
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 15),
                        Column(
                          children: [
                            Image(
                              image:
                                  AssetImage('assets/images/eminiem.jpg'),
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Hip Hop Music',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Image(
                              image:
                                  AssetImage('assets/images/edshrean.jpg'),
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Pop Music',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/metal.jpg'),
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Rock Music',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Image(
                              image:
                                  AssetImage('assets/images/classical.jpg'),
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Classical Music',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Second Row For Recommendation
            Container(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        child: const Text(
                          'Recommended',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "Based on your Listening",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 15),
                        _buildRecommendation(
                          image: 'assets/images/eminiem.jpg',
                          title: 'Revival',
                          subtitle: 'Eminem',
                        ),
                        SizedBox(width: 10),
                        _buildRecommendation(
                          image: 'assets/images/edshrean.jpg',
                          title: 'Pop Music',
                          subtitle: 'Ed Sheeran',
                        ),
                        SizedBox(width: 10),
                        _buildRecommendation(
                          image: 'assets/images/metal.jpg',
                          title: 'Rock Music',
                          subtitle: 'Metallica',
                        ),
                        SizedBox(width: 10),
                        _buildRecommendation(
                          image: 'assets/images/classical.jpg',
                          title: 'Classical Music',
                          subtitle: 'Ludwig van Beethoven',
                        ),
                        SizedBox(width: 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Third Row (You can replace this with your content)
            Container(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        child: const Text(
                          'Trending',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 15),
                        _buildRecommendation(
                          image: 'assets/images/eminiem.jpg',
                          title: 'Revival',
                          subtitle: 'Eminem',
                        ),
                        SizedBox(width: 10),
                        _buildRecommendation(
                          image: 'assets/images/edshrean.jpg',
                          title: 'Pop Music',
                          subtitle: 'Ed Sheeran',
                        ),
                        SizedBox(width: 10),
                        _buildRecommendation(
                          image: 'assets/images/metal.jpg',
                          title: 'Rock Music',
                          subtitle: 'Metallica',
                        ),
                        SizedBox(width: 10),
                        _buildRecommendation(
                          image: 'assets/images/classical.jpg',
                          title: 'Classical Music',
                          subtitle: 'Ludwig van Beethoven',
                        ),
                        SizedBox(width: 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container()
          ],
        ),
      ),

      // // Fixed position search box at the top
      // Positioned(
      //   top: 10,
      //   left: 0,
      //   right: 0,
      //   child: Container(
      //     padding: EdgeInsets.symmetric(horizontal: 16),
      //     height: 35, // Set the desired height for the search box
      //     color: Color.fromARGB(255, 236, 236, 236).withOpacity(0),
      //     child: Center(
      //       child: Container(
      //         width: 250,
      //         height: 40,
      //         child: TextField(
      //           decoration: InputDecoration(
      //             hintText: 'Search...',
      //             hintStyle: TextStyle(fontStyle: FontStyle.italic),
      //             suffixIcon: Icon(Icons.search),
      //             filled: true,
      //             fillColor: Colors.white.withOpacity(1),
      //             contentPadding:
      //                 EdgeInsets.only(top: 10.0, bottom: 5.0, left: 10.0),
      //             border: OutlineInputBorder(
      //               borderRadius: BorderRadius.all(Radius.circular(100)),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      // fixed music palyin poi=sition
      // Positioned(
      //   left: 0,
      //   right:0,
      //   bottom: 0,
      //   child:
      // Container(
      //   padding: EdgeInsets.symmetric(vertical: 10),
      //  color: Color.fromARGB(255, 39, 38, 38).withOpacity(0.8),
      //   child: Row(
      //     children: [
      //       Icon(
      //         Icons.my_library_music_outlined,
      //         size: 40,
      //         color: Color.fromARGB(255, 216, 213, 213),
      //       ),
      //       Center(child: Padding(
      //         padding: const EdgeInsets.only(left: 80),
      //         child: Text("Now Playing", style: TextStyle( fontStyle: FontStyle.normal,
      //                       fontSize: 20,
      //                       fontWeight: FontWeight.bold,
      //                       color: Colors.white70,), ),
      //       )),
      //       Padding(padding: const EdgeInsets.only(left: 90),
      //       child: Icon(Icons.play_arrow_rounded,size: 40, color: Colors.white70),
      //       )
      //     ],
      //   ),

      // ))
    ],
      ),
      
      
    );
  }
}

Widget _buildRecommendation({
  required String image,
  required String title,
  required String subtitle,
}) {
  return Column(
    children: [
      Image(
        image: AssetImage(image),
        width: 150,
        height: 150,
        fit: BoxFit.cover,
      ),
      SizedBox(height: 5),
      Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
      Text(
        subtitle,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white70,
        ),
      ),
    ],
  );
}


