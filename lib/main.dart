import 'package:brightstart/presentation/pages/login/page_log_in.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tiểu thuyết Online',
      debugShowCheckedModeBanner: false,
      home: PageLogin(),
    );
  }
}
