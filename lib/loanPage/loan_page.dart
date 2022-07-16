import 'package:flutter/material.dart';
import 'package:oxyloan/dashboardPage/dashboard_page.dart';
import 'package:oxyloan/shared/widgets/custom_button.dart';
import 'package:oxyloan/shared/widgets/custom_text_field.dart';
import 'package:oxyloan/shared/widgets/dims.dart';

class LoanPage extends StatefulWidget {
  const LoanPage({Key? key}) : super(key: key);

  @override
  State<LoanPage> createState() => _LoanPageState();
}

class _LoanPageState extends State<LoanPage> {
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
                    text: 'Apply For a\n',
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
                'At a Comfortable Interest Rate.',
                style: TextStyle(
                  fontFamily: 'SfPro',
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: Color(0xff111827),
                ),
              ),
              Expanded(
                  child: ListView(
                children: [
                  const YBox(40),
                  const CustomTextField(
                    hint: 'FullName',
                    hintstyle: TextStyle(
                      fontFamily: 'SfPro',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff9CA3AF),
                    ),
                  ),
                  const YBox(10),
                  const CustomTextField(
                    hint: 'Home Address',
                    hintstyle: TextStyle(
                      fontFamily: 'SfPro',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff9CA3AF),
                    ),
                  ),
                  const YBox(10),
                  const CustomTextField(
                    hint: 'Bank Account Number',
                    hintstyle: TextStyle(
                      fontFamily: 'SfPro',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff9CA3AF),
                    ),
                  ),
                  const YBox(10),
                  const CustomTextField(
                    hint: 'Bank Name',
                    hintstyle: TextStyle(
                      fontFamily: 'SfPro',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff9CA3AF),
                    ),
                  ),
                  const YBox(10),
                  const CustomTextField(
                    hint: 'Telephone Number',
                    hintstyle: TextStyle(
                      fontFamily: 'SfPro',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff9CA3AF),
                    ),
                  ),
                  const YBox(10),
                  const CustomTextField(
                    hint: 'Amount Requested',
                    hintstyle: TextStyle(
                      fontFamily: 'SfPro',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff9CA3AF),
                    ),
                  ),
                  const YBox(10),
                  const CustomTextField(
                    hint: 'Period Of Loan PayBack(Months)',
                    hintstyle: TextStyle(
                      fontFamily: 'SfPro',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff9CA3AF),
                    ),
                  ),
                  const YBox(10),
                  RichText(
                    text: const TextSpan(
                        text: 'Note:',
                        style: TextStyle(
                          fontFamily: 'SfPro',
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Color(0xff111827),
                        ),
                        children: [
                          TextSpan(
                            text:
                                ' Your Period Of Loan PayBack Should Always Be Within 12 Months',
                            style: TextStyle(
                              fontFamily: 'SfPro',
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: Color(0xffFFAB63),
                            ),
                          )
                        ]),
                  ),
                  const YBox(10),
                  CustomButton(
                    expanded: true,
                    text: 'Apply',
                    radius: BorderRadius.circular(16),
                    padding: const EdgeInsets.only(left: 0, right: 0),
                    onPressed: () {
                      _shownotificationmodalbuttomsheett(context);
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

  void _shownotificationmodalbuttomsheett(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext bc) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: const BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          children: const [
                            YBox(20),
                            Text(
                              'Successful!!!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                color: Color(0xffFFAB63),),
                            ),
                            YBox(10),
                            Text(
                              'Your Request Has Been Sent to Oxyloan and You would be contacted soon Via email with all other neccessary information',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color.fromRGBO(24, 29, 39, 1)),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 28.0, bottom: 38),
                        child: Column(
                          children: [
                            CustomButton(
                              onPressed: () {
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(builder: (context) => const DashboardPage()), (route) => false);
                              },
                              expanded: true,
                              text: 'Continue',
                                radius: BorderRadius.circular(12),
                                padding: const EdgeInsets.only(left: 0, right: 0)
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
