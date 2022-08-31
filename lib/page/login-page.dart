import 'package:flutter/material.dart';
import 'package:homestay_app/template.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override

  bool currentIndex = true;

  Widget build(BuildContext context) {
    Widget email() {
      return Container(
        child: Text(
          'Email',
          style: blackTextStyle.copyWith(
              fontSize: 12, fontWeight: semiBold, letterSpacing: 0.5),
        ),
      );
    }

    Widget formEmail() {
      return Container(
          margin: EdgeInsets.only(
            top: 10,
          ),
          child: TextField(
            textAlign: TextAlign.start,
            textAlignVertical: TextAlignVertical.center,
            keyboardType: TextInputType.emailAddress,
            cursorColor: verificationTextColor,
            style: TextStyle(color: blackColor),
            // obscureText: true,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(color: primaryColor)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(color: Colors.black26)),
                // prefixIcon: Icon(Icons.person),
                hintText: "Input your email",
                hintStyle: verificationTextStyle.copyWith(fontSize: 14)),
          ));
    }

    Widget password() {
      return Container(
        margin: EdgeInsets.only(top: 15),
        child: Text(
          'Password',
          style: blackTextStyle.copyWith(
              fontSize: 12, fontWeight: semiBold, letterSpacing: 0.5),
        ),
      );
    }

    Widget formPassword() {
      return Container(
          margin: EdgeInsets.only(
            top: 10,
          ),
          child: TextField(
            textAlign: TextAlign.start,
            textAlignVertical: TextAlignVertical.center,
            keyboardType: TextInputType.emailAddress,
            cursorColor: verificationTextColor,
            obscureText: true,
            style: TextStyle(color: blackColor),
            // obscureText: true,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(color: primaryColor)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(color: Colors.black26)),
                // prefixIcon: Icon(Icons.person),
                hintText: "Input your password",
                hintStyle: verificationTextStyle.copyWith(fontSize: 14),
                suffixIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/icon-eye-active.png',
                      width: 24,
                    ),
                  ],
                )),
          ));
    }

    Widget infoSystem() {
      return Container(
        margin: EdgeInsets.only(top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      currentIndex = !currentIndex;
                    });
                  },
                  child: currentIndex ? Image.asset(
                    'assets/icons/icon-check-hidden.png',
                    width: 24,
                  ) : Image.asset(
                    'assets/icons/icon-check-active.png',
                    width: 24,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Remember me',
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Text(
              'Forget Password?',
              style:
                  primaryTextStyle.copyWith(fontSize: 12, fontWeight: semiBold),
            )
          ],
        ),
      );
    }

    Widget btnLogin() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24), color: primaryColor),
          child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/verification-page');
              },
              child: Text(
                'Login',
                style: whiteTextStyle.copyWith(
                    fontSize: 14, fontWeight: semiBold, wordSpacing: 2),
              )),
        ),
      );
    }

    Widget orLoginWith() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Center(
            child: Text(
          '- Or Login With -',
          style: subBlackTextStyle.copyWith(fontSize: 14, fontWeight: reguler),
        )),
      );
    }

    Widget loginWithGoogle() {
      return Container(
        margin: EdgeInsets.only(
          top: 30
        ),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xffebebeb)),
            borderRadius: BorderRadius.circular(24),
            color: whiteColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/icon-google.png',
              width: 24,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Login with Google',
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: reguler,
                  ),
                )),
          ],
        ),
      );
    }

    Widget loginWithFacebook() {
      return Container(
        margin: EdgeInsets.only(
          top: 15
        ),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xffebebeb)),
            borderRadius: BorderRadius.circular(24),
            color: whiteColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/icon-facebook.png',
              width: 24,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Login with Google',
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: reguler,
                  ),
                )),
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: whiteColor,
      body: ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false),
        child: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Image.asset('assets/imgs/login-img.png'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(top: 70, left: 30, right: 30),
                            child: Text(
                              'Login',
                              style: whiteTextStyle.copyWith(
                                  fontSize: 14, fontWeight: semiBold),
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 10, left: 30, right: 30),
                            child: Text(
                              'Helo, welcome back to your account.',
                              style: whiteTextStyle.copyWith(
                                  fontSize: 14, fontWeight: reguler),
                            ),
                          )
                        ],
                      ),
                      Container(
                        // todo menurunkan konten
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.2),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              // !Isi Widget Disini
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    email(),
                                    formEmail(),
                                    password(),
                                    formPassword(),
                                    infoSystem(),
                                    btnLogin(),
                                    orLoginWith(),
                                    loginWithGoogle(),
                                    loginWithFacebook()
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(
          bottom: 30
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have an account?", style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: reguler
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
      ),
    );
  }
}
