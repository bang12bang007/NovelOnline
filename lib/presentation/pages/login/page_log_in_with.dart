import 'package:brightstart/assets/colors.dart';

import 'package:brightstart/presentation/pages/login/page_forgot_password.dart';
import 'package:brightstart/presentation/pages/login/page_log_in.dart';
import 'package:brightstart/presentation/pages/login/page_register.dart';
import 'package:brightstart/presentation/widgets/button.dart';
import 'package:brightstart/presentation/widgets/log_in/login_cover.dart';
import 'package:brightstart/presentation/widgets/log_in/login_textfield.dart';
import 'package:brightstart/presentation/widgets/log_in/login_with_types.dart';
import 'package:flutter/material.dart';

class LogInWith extends StatefulWidget {
  const LogInWith({super.key});

  @override
  State<LogInWith> createState() => _LogInWithState();
}

class _LogInWithState extends State<LogInWith> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  LoginTextField(
                    controller: _emailController,
                    hintText: 'Email',
                    prefixIcon: Icons.email,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 5),
                  LoginTextField(
                    controller: _passwordController,
                    hintText: 'Mật khẩu',
                    prefixIcon: Icons.lock,
                    isPassword: true,
                    obscureText: _obscurePassword,
                    onTogglePassword: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PageRegister(),
                            ),
                          );
                        },
                        child: Text('Đăng ký '),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PageForgotPassword(),
                            ),
                          );
                        },
                        child: Text('Quên mật khẩu'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            SizedBox(
              height: 50,
              width: 300,
              child: UtilsButton(
                text: 'Đăng nhập',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageLogin()),
                  );
                },
              ),
            ),
            LoginWithTypes(),
          ],
        ),
      ),
    );
  }
}
