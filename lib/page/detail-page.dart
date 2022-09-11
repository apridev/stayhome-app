import 'package:flutter/material.dart';
import 'package:homestay_app/template.dart';
import 'package:homestay_app/widgets/expanded-tile.dart';

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
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                          child: Image.asset(
                        'assets/icons/icon-back-detail-product.png',
                        width: 40,
                      )),
                      Text(
                        'Details',
                        style: whiteTextStyle.copyWith(
                            fontSize: 18, fontWeight: semiBold),
                      ),
                      Image.asset(
                        'assets/icons/icon-history-detail-product.png',
                        width: 40,
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget nameProduct() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ina Guest House',
                    style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                        overflow: TextOverflow.ellipsis),
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/icons/icon-location.png', width: 20),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Bantul, Yogyakarta',
                        style: subBlackTextStyle.copyWith(
                            fontSize: 12, fontWeight: semiBold),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    '4.2',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Image.asset(
                    'assets/icons/icon-star.png',
                    width: 20,
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget iconsDetailProduct() {
      return Container(
        margin: EdgeInsets.only(top: 15, left: 20, right: 20),
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

    Widget descriptionProduct(){
      return Container(
        margin: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20
        ),
        child: Expandedtile(text: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet."));
    }

    Widget hotelFacility(){
      return Container(
        margin: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
          bottom: 20
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('assets/imgs/facility-1.png', width: 50, fit: BoxFit.cover,
              )
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('assets/imgs/facility-2.png', width: 50, fit: BoxFit.cover,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('assets/imgs/facility-3.png', width: 50, fit: BoxFit.cover,
              )
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('assets/imgs/facility-4.png', width: 50, fit: BoxFit.cover,
              )
            ),
            Stack(
              children: 
                [ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset('assets/imgs/facility-5.png', width: 50, fit: BoxFit.cover,
                  )
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: blackColor.withOpacity(0.5)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('+5', style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                        letterSpacing: 2
                      ),),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false),
        child: ListView(
          children: [
            Column(
              children: [
                imgProduct(), 
                nameProduct(), 
                iconsDetailProduct(),
                descriptionProduct(),
                hotelFacility()
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(color: whiteColor, boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ]),
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Price',
                      style: blackTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                          letterSpacing: 0.4),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          '\$550',
                          style: primaryTextStyle.copyWith(
                              fontSize: 18, fontWeight: semiBold),
                        ),
                        Text(
                          '/month',
                          style: subBlackTextStyle.copyWith(
                              fontSize: 12, fontWeight: semiBold),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 140,
                height: 50,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(24)),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/payment-detail');
                    },
                    child: Text(
                      'Check in',
                      style: whiteTextStyle.copyWith(
                          fontSize: 14, fontWeight: semiBold),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
