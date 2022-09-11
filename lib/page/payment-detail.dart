import 'package:flutter/material.dart';
import 'package:homestay_app/template.dart';

class PaymentDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Payment Detail'),
        titleTextStyle: blackTextStyle.copyWith(
          fontSize: 14,
          fontWeight: semiBold
        ),
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios_new_rounded, color: blackColor,),
        backgroundColor: whiteColor,
      ),
    );
  }
}