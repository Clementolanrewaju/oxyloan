import 'package:flutter/material.dart';
import 'package:oxyloan/dashboardPage/dashboard_page.dart';
import 'package:oxyloan/shared/widgets/custom_button.dart';
import 'package:oxyloan/shared/widgets/custom_text_field.dart';
import 'package:oxyloan/shared/widgets/dims.dart';
import 'package:oxyloan/signupPage/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const YBox(50),
            const Text(
              'Hi There!👋 ',
              style: TextStyle(
                fontFamily: 'SfPro',
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: Color(0xff111827),
              ),
            ),
            const YBox(10),
            const Text(
              'Welcome back, Sign in to your account',
              style: TextStyle(
                fontFamily: 'SfPro',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff6B7280),
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                const YBox(50),
                const CustomTextField(
                  hint: 'Email',
                  hintstyle: TextStyle(
                    fontFamily: 'SfPro',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xff9CA3AF),
                  ),
                ),
                const YBox(30),
                const CustomTextField(
                  hint: 'Password',
                  hintstyle: TextStyle(
                    fontFamily: 'SfPro',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xff9CA3AF),
                  ),
                ),
                const YBox(30),
                CustomButton(
                  expanded: true,
                  text: 'Sign In',
                  radius: BorderRadius.circular(16),
                  padding: const EdgeInsets.only(left: 0, right: 0),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DashboardPage(),
                        ));
                  },
                ),
                const YBox(20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpPage(),
                        ));
                  },
                  child: RichText(
                    text: const TextSpan(
                        text: 'Don’t have an account?',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SfPro',
                          color: Color(0xff6B7280),
                        ),
                        children: [
                          TextSpan(
                            text: '  Sign Up',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'SfPro',
                              color: Color(0xffFFCB9D),
                            ),
                          )
                        ]),
                  ),
                ),
              ],
            ))
          ],
        ),
      )),
    );
  }
}
