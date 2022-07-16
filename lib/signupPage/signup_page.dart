import 'package:flutter/material.dart';
import 'package:oxyloan/dashboardPage/dashboard_page.dart';
import 'package:oxyloan/shared/widgets/custom_button.dart';
import 'package:oxyloan/shared/widgets/custom_text_field.dart';
import 'package:oxyloan/shared/widgets/dims.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios_new),
              ),
              RichText(
                text: const TextSpan(
                    text: 'Create a ',
                    style: TextStyle(
                      fontFamily: 'SfPro',
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Color(0xff111827),
                    ),
                    children: [
                      TextSpan(
                        text: 'oxyloan',
                        style: TextStyle(
                          fontFamily: 'SfPro',
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Color(0xffFFAB63),
                        ),
                      )
                    ]),
              ),
              const Text(
                'account today.',
                style: TextStyle(
                  fontFamily: 'SfPro',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Color(0xff111827),
                ),
              ),
              const YBox(30),
              Expanded(
                  child: ListView(
                children: [
                  Row(
                    children: const [
                      Expanded(
                        child: CustomTextField(
                          hint: 'FirstName',
                          hintstyle: TextStyle(
                            fontFamily: 'SfPro',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xff9CA3AF),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CustomTextField(
                          hint: 'LastName',
                          hintstyle: TextStyle(
                            fontFamily: 'SfPro',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xff9CA3AF),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const YBox(10),
                  const CustomTextField(
                    keyboardType: TextInputType.emailAddress,
                    hint: 'Email',
                    hintstyle: TextStyle(
                      fontFamily: 'SfPro',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff9CA3AF),
                    ),
                  ),
                  const YBox(10),
                  const CustomTextField(
                    keyboardType: TextInputType.phone,
                    hint: 'PhoneNumber',
                    hintstyle: TextStyle(
                      fontFamily: 'SfPro',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff9CA3AF),
                    ),
                  ),
                  const YBox(10),
                  const CustomTextField(
                    keyboardType: TextInputType.phone,
                    hint: 'Password',
                    hintstyle: TextStyle(
                      fontFamily: 'SfPro',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff9CA3AF),
                    ),
                  ),
                  const YBox(10),
                  const CustomTextField(
                    keyboardType: TextInputType.phone,
                    hint: 'ConfirmPassword',
                    hintstyle: TextStyle(
                      fontFamily: 'SfPro',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff9CA3AF),
                    ),
                  ),
                  const YBox(10),
                  CustomButton(
                    expanded: true,
                    text: 'Sign Up',
                    radius: BorderRadius.circular(16),
                    padding: const EdgeInsets.only(left: 0, right: 0), onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardPage(),));
                  },
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
