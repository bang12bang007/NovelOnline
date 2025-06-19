import 'package:flutter/material.dart';

class ListViewHomePage extends StatefulWidget {
  const ListViewHomePage({super.key});

  @override
  State<ListViewHomePage> createState() => _ListViewHomePageState();
}

class _ListViewHomePageState extends State<ListViewHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView.builder(itemBuilder: (context, index) {
            return Container(
              height: 100,
              width: 100,
              color: Colors.red,
            );
          },),
        ],
      ),
    );
  }
}