import 'package:flutter/material.dart';
import 'package:homestay_app/onboarding-data.dart';
import 'package:homestay_app/template.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/imgs/onboarding-1.png'),
              Container(
                margin: EdgeInsets.only(
                  top: 50,
                  left: 30,
                  right: 30
                ),
                child: Row(
                  children: [
                  ],
                )
              ),
              Container(
              // todo menurunkan konten
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.55
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ! Menghapus Garis pada Content
                    Align(
                      child: Container(
                        width: 40,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // !Isi Widget Disini
                    Column(
                      children: [
                        Center(
                          child: Container(
                            width: 275,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: primaryColor
                            ),
                            child: TextButton(
                              onPressed: (){
                                Navigator.pushNamed(context, '/login-page');
                              }, 
                              child: Text('Login', style: whiteTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                                wordSpacing: 2
                              ),)
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Center(
                          child: Container(
                            width: 275,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffebebeb)
                              ),
                              borderRadius: BorderRadius.circular(24),
                              color: whiteColor
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/icons/icon-google.png', width: 24,),
                                TextButton(
                                  onPressed: (){}, 
                                  child: Text('Login with Google', style: blackTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: semiBold,
                                  ),)
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Center(
                          child: Container(
                            width: 275,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffebebeb)
                              ),
                              borderRadius: BorderRadius.circular(24),
                              color: whiteColor
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/icons/icon-facebook.png', width: 24,),
                                TextButton(
                                  onPressed: (){}, 
                                  child: Text('Login with Facebook', style: blackTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: semiBold,
                                  ),)
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(
          bottom: 30
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Don’t have an account?', style: blackTextStyle.copyWith(
              fontSize: 14,
            ),),
            SizedBox(
              width: 4,
            ),
            Text('Register', style: primaryTextStyle.copyWith(
              fontSize: 14,
              fontWeight: semiBold
            ),)
          ],
        ),
      )
    );
  }
}
