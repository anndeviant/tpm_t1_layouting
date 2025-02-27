import 'package:flutter/material.dart';
import 'package:tpm_t1_layouting/collectionlow.dart';
import 'package:tpm_t1_layouting/forum.dart';
import 'package:tpm_t1_layouting/posts.dart';
// import 'collection.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<Wrapper> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const CollectionLow(),
    const Posts(),
    const Forum(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFF9EF),
        body: IndexedStack(index: _selectedIndex, children: _pages),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFFFFF9EF),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.collections),
              label: 'Collection',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.post_add), label: 'Posts'),
            BottomNavigationBarItem(icon: Icon(Icons.forum), label: 'Forum'),
          ],
        ),
      ),
    );
  }
}
