import 'package:flutter/material.dart';
import 'package:homestay_app/template.dart';

class PaymentDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget appbar() {
      return Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.arrow_back_ios_new_rounded,
              color: blackColor,
            ),
            Text('Payment Detail',
                style: blackTextStyle.copyWith(
                    fontSize: 14, fontWeight: semiBold)),
            Text('')
          ],
        ),
      );
    }

    Widget imageContent() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.asset(
            'assets/imgs/product-1.png',
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.3,
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget titlePrice() {
      return Container(
        margin: EdgeInsets.only(top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ina Guest House',
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/icon-location.png',
                        width: 20,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Row(
                        children: [
                          Text(
                            'Bantul,',
                            style: subBlackTextStyle.copyWith(
                                fontSize: 12, fontWeight: medium),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Yogyakarta',
                            style: subBlackTextStyle.copyWith(
                                fontSize: 12, fontWeight: medium),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Text(
                  '\$599.00',
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: semiBold),
                ),
                Text(
                  '/months',
                  style: subBlackTextStyle.copyWith(
                      fontSize: 12, fontWeight: medium),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget iconsDetailProduct() {
      return Container(
        margin: EdgeInsets.only(
          top: 10
        ),
        child: Row(
          children: [
            Container(
              child: Row(
                children: [
                  Image.asset('assets/icons/icon-sofa.png', width: 30),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '3',
                    style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: semiBold),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Container(
              child: Row(
                children: [
                  Image.asset('assets/icons/icon-bathroom.png', width: 30),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '2',
                    style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: semiBold),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Container(
              child: Row(
                children: [
                  Image.asset('assets/icons/icon-home.png', width: 30),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '1000',
                    style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: semiBold),
                  ),
                  Text(
                    'mm',
                    style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: semiBold),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
            child: Column(
              children: [
                appbar(),
                imageContent(),
                titlePrice(),
                iconsDetailProduct()
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.1,
        color: whiteColor,
        child: Container(
          margin: EdgeInsets.only(
              left: defaultMargin, right: defaultMargin, top: 10, bottom: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24), color: primaryColor),
          child: TextButton(
              onPressed: () {},
              child: Text(
                'Check in',
                style:
                    whiteTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
              )),
        ),
      ),
    );
  }
}
