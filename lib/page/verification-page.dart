import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homestay_app/template.dart';

class VerificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollBehavior().copyWith(overscroll: false),
      child: Scaffold(
        backgroundColor: whiteColor,
        body: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: ListView(
            children: [
              Column(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.1,
                      ),
                      child: Text(
                        'Verification Account',
                        style: blackTextStyle.copyWith(
                            fontSize: 24, fontWeight: semiBold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Enter the verification code that\n we have sent to your email',
                    style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
                    textAlign: TextAlign.center,
                  ),
                  Form(
                      child: Container(
                    margin: EdgeInsets.only(top: 24, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            style: primaryTextStyle.copyWith(
                                fontSize: 24, fontWeight: semiBold),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            style: primaryTextStyle.copyWith(
                                fontSize: 24, fontWeight: semiBold),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            style: primaryTextStyle.copyWith(
                                fontSize: 24, fontWeight: semiBold),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            style: primaryTextStyle.copyWith(
                                fontSize: 24, fontWeight: semiBold),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: primaryColor),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(context, '/main-page', (route) => false);
                        },
                        child: Text(
                          'Verification',
                          style: whiteTextStyle.copyWith(
                              fontSize: 14, fontWeight: semiBold, wordSpacing: 2),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "You don't get the code?",
                          style: blackTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text('Resend', style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
