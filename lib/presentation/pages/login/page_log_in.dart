import 'package:brightstart/assets/colors.dart';
import 'package:brightstart/presentation/pages/home/page_home.dart';
import 'package:brightstart/presentation/widgets/button.dart';
import 'package:brightstart/presentation/widgets/log_in/login_cover.dart';
import 'package:flutter/material.dart';

class PageLogin extends StatelessWidget {
  const PageLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Đăng nhập',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: UtilsColors.primary,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color.fromARGB(255, 255, 255, 255), UtilsColors.primary],
          ),
        ),

        child: Column(
          children: [
            Cover(),
            SizedBox(height: 250),
            SizedBox(
              height: 50,
              width: 300,
              child: UtilsButton(
                text: 'Đăng nhập',
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageHome()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
