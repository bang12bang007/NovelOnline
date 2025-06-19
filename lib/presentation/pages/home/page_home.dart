import 'package:brightstart/assets/colors.dart';
import 'package:brightstart/presentation/widgets/home/autoslide.dart';
import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: UtilsColors.primary,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          style: ButtonStyle(iconSize: WidgetStateProperty.all(30)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            style: ButtonStyle(iconSize: WidgetStateProperty.all(30)),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color.fromARGB(255, 255, 255, 255), UtilsColors.primary],
          ),
        ),
        child: Column(
          children: [
            Container(height: 150, width: double.infinity, color: Colors.red),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),

        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: UtilsColors.primary,
          unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(color: UtilsColors.primary),
          unselectedLabelStyle: TextStyle(color: Colors.white),
          selectedFontSize: 22,
          unselectedFontSize: 18,
          iconSize: 25,
          unselectedIconTheme: IconThemeData(color: Colors.black, size: 20),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Phone'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
