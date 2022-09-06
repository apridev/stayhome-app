import 'package:flutter/material.dart';
import 'package:homestay_app/template.dart';

class DetailProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imgProduct() {
      return Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset(
                    'assets/imgs/product-1.png',
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.45,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/icons/icon-back-detail-product.png', width: 40,),
                      Text('Details', style: whiteTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold
                      ),),
                      Image.asset('assets/icons/icon-history-detail-product.png', width: 40,)
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    ;

    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        children: [
          imgProduct(),
        ],
      ),
    );
  }
}
