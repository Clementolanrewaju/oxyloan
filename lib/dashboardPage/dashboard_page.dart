import 'package:flutter/material.dart';
import 'package:oxyloan/loanPage/loan_page.dart';
import 'package:oxyloan/shared/widgets/custom_button.dart';
import 'package:oxyloan/shared/widgets/dims.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
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
              Row(
                children: const [
                  Icon(Icons.person),
                  XBox(10),
                  Text('Welcome Lanre'),
                  Spacer(),
                  Icon(Icons.notifications)
                ],
              ),
              const YBox(30),
              Container(
                padding: const EdgeInsets.all(10),
                height: context.deviceHeight() / 5.5,
                width: context.deviceWidth(),
                decoration: BoxDecoration(
                  color: const Color(0xffFFAB63),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    const YBox(7),
                    const Text(
                      'NGN 100,000',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SfPro',
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Maximum Loan Amount',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SfPro',
                        color: Colors.white,
                      ),
                    ),
                    const YBox(20),
                    const Text(
                      'Total Loans Applied For:',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SfPro',
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'You Have Applied For 8 Loans',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SfPro',
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: const [
                        Spacer(),
                        Text(
                          'OXYLOAN.',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SfPro',
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const YBox(20),
              Card(
                elevation: 10,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  height: context.deviceHeight() / 10,
                  width: context.deviceWidth(),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: const [
                      Text(
                        'Do You Know You Can Loan Up To 1 Million Naira After Verifying Your Account?',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SfPro',
                            color: Colors.black),
                      ),
                      YBox(1),
                      Text(
                        'Click Here Now To Verify Your Account!!!',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SfPro',
                          color: Color(0xffFFAB63),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const YBox(20),
              CustomButton(
                  text: 'Apply Now!!',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoanPage(),
                        ));
                  },
                  expanded: true,
                  radius: BorderRadius.circular(30),
                  padding: const EdgeInsets.only(left: 0, right: 0)),
              const YBox(20),
              Divider(),
              const Text('Updates'),
              Divider(),
              Expanded(
                  child: ListView(
                children: const [
                  YBox(80),
                  Center(child: Text('OUR UPDATES COMES UP HERE!!!!'))
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
