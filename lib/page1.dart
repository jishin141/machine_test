// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// class ProfilePage extends StatelessWidget {
//   final List<String> imageUrls = [
//     'asset/images/1.jpg',
//     'asset/images/2.jpg',
//     'asset/images/3.jpeg',
//     'asset/images/4.jpeg',
//     'asset/images/5.jpeg',
//     'asset/images/6.jpg',
//     'asset/images/3.jpeg',
//     'asset/images/4.jpeg',
//     'asset/images/5.jpeg',
//     'asset/images/6.jpg',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.pink[50],
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: Padding(
//           padding: EdgeInsets.all(8.0),
//           child: Image.asset('asset/images/employee.jpg'),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.more_vert, color: Colors.black),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Stack(
//                   children: [
//                     CircleAvatar(
//                       radius: 50,
//                       backgroundImage: AssetImage('asset/images/employee.jpg'),
//                     ),
//                     Positioned(
//                       bottom: 0,
//                       right: 0,
//                       child: CircleAvatar(
//                         radius: 14,
//                         backgroundColor: Colors.white,
//                         child: Icon(Icons.edit, color: Colors.blue),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   'John Smith',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 8),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ElevatedButton(
//                       style:
//                           ElevatedButton.styleFrom(backgroundColor: Colors.red),
//                       onPressed: () {},
//                       child: Text('Edit Profile'),
//                     ),
//                     SizedBox(width: 10),
//                     ElevatedButton(
//                       style:
//                           ElevatedButton.styleFrom(backgroundColor: Colors.red),
//                       onPressed: () {},
//                       child: Text('Share Profile'),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 8.0),
//               child: StaggeredGrid.count(
//                 crossAxisCount: 3,
//                 mainAxisSpacing: 4,
//                 crossAxisSpacing: 4,
//                 children: imageUrls.map((image) {
//                   return ClipRRect(
//                     borderRadius: BorderRadius.circular(8),
//                     child: Image.network(image, fit: BoxFit.cover),
//                   );
//                 }).toList(),
//               ),
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
//         ],
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Colors.grey,
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProfilePage extends StatelessWidget {
  final List<String> imageUrls = [
    'asset/images/1.jpg',
    'asset/images/2.jpg',
    'asset/images/3.jpeg',
    'asset/images/4.jpeg',
    'asset/images/5.jpeg',
    'asset/images/6.jpg',
    'asset/images/3.jpeg',
    'asset/images/4.jpeg',
    'asset/images/5.jpeg',
    'asset/images/6.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.pop(context),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.asset('asset/images/employee.jpg'),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('asset/images/employee.jpg'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.edit, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'John Smith',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () {},
                      child: Text('Edit Profile'),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () {},
                      child: Text('Share Profile'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: StaggeredGrid.count(
                crossAxisCount: 3,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: imageUrls.map((image) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(image, fit: BoxFit.cover),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
