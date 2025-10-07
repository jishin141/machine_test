// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _selectedIndex = 0;

//   final List<String> images = [
//     'asset/images/1.jpg',
//     'asset/images/2.jpg',
//     'asset/images/3.jpeg',
//     'asset/images/4.jpeg',
//     'asset/images/5.jpeg',
//     'asset/images/6.jpg',
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final isLandscape = size.width > size.height;

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Stack(
//               alignment: Alignment.topCenter,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 60.0),
//                   child: Column(
//                     children: [
//                       CircleAvatar(
//                         radius: 60,
//                         backgroundImage:
//                             AssetImage('asset/images/employee.jpg'),
//                       ),
//                       SizedBox(height: 10),
//                       Text(
//                         'John smith',
//                         style: GoogleFonts.nerkoOne(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red,
//                     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//                   ),
//                   child: Text('Edit Profile',
//                       style: GoogleFonts.roboto(color: Colors.white)),
//                 ),
//                 SizedBox(width: 50),
//                 ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red,
//                     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//                   ),
//                   child: Text('Share Profile',
//                       style: GoogleFonts.roboto(color: Colors.white)),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: MasonryGridView.count(
//                 crossAxisCount: isLandscape ? 3 : 2,
//                 mainAxisSpacing: 18,
//                 crossAxisSpacing: 18,
//                 itemCount: images.length,
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 itemBuilder: (context, index) {
//                   return ClipRRect(
//                     borderRadius: BorderRadius.circular(12.0),
//                     child: Image.asset(
//                       images[index],
//                       fit: BoxFit.cover,
//                       height: size.height * ((index % 4 == 0) ? 0.4 : 0.3),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.blue,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<String> images = [
    'asset/images/1.jpg',
    'asset/images/2.jpg',
    'asset/images/3.jpeg',
    'asset/images/4.jpeg',
    'asset/images/5.jpeg',
    'asset/images/6.jpg',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isLandscape = size.width > size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 48.0, left: 20.0),
                    child: Image.asset(
                      'asset/images/Screenshot 2025-02-15 114451.png', // Add your logo image here
                      height: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage:
                            AssetImage('asset/images/employee.jpg'),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'John smith',
                        style: GoogleFonts.nerkoOne(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  ),
                  child: Text('Edit Profile',
                      style: GoogleFonts.roboto(color: Colors.white)),
                ),
                SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  ),
                  child: Text('Share Profile',
                      style: GoogleFonts.roboto(color: Colors.white)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MasonryGridView.count(
                crossAxisCount: isLandscape ? 3 : 2,
                mainAxisSpacing: 18,
                crossAxisSpacing: 18,
                itemCount: images.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                      height: size.height * ((index % 4 == 0) ? 0.4 : 0.3),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
