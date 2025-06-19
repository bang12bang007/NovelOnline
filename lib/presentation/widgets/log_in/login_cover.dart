import 'package:brightstart/assets/colors.dart';
import 'package:brightstart/assets/image.dart';
import 'package:flutter/material.dart';

class Cover extends StatelessWidget {
  const Cover({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.zero,
          margin: EdgeInsets.only(right: 100, top: 150),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Xin chào! ',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'Tác Giả',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: UtilsColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 300,
          height: 120,
          margin: EdgeInsets.only(right: 100),
          padding: EdgeInsets.zero,
          child: Image.asset(UtilsImage.logo, fit: BoxFit.contain),
        ),
        Container(
          margin: EdgeInsets.only(right: 130, top: 10),
          child: Text(
            'Đọc tiểu thuyết và kiếm tiền',
            style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
          ),
        ),
      ],
    );
  }
}
