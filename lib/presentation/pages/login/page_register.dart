import 'package:brightstart/assets/colors.dart';
import 'package:brightstart/presentation/widgets/button.dart';
import 'package:brightstart/presentation/widgets/log_in/login_cover.dart';
import 'package:brightstart/presentation/widgets/log_in/login_textfield.dart';
import 'package:flutter/material.dart';

class PageRegister extends StatefulWidget {
  const PageRegister({super.key});

  @override
  State<PageRegister> createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmController =
      TextEditingController();
  bool _obscurePassword = true;
  bool _obscurePasswordConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng Ký'),
        backgroundColor: UtilsColors.primary,
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
            Cover(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                  SizedBox(height: 5),
                  LoginTextField(
                    controller: _passwordConfirmController,
                    hintText: 'Nhập lại mật khẩu',
                    prefixIcon: Icons.lock,
                    isPassword: true,
                    obscureText: _obscurePasswordConfirm,
                    onTogglePassword: () {
                      setState(() {
                        _obscurePasswordConfirm = !_obscurePasswordConfirm;
                      });
                    },
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: UtilsButton(text: 'Xác nhận', onPressed: () {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
