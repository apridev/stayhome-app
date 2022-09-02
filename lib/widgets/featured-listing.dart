import 'package:flutter/material.dart';
import 'package:homestay_app/template.dart';

class FeaturedListing extends StatelessWidget {

  String images;
  String nameLocation;
  String location;
  double price;

  FeaturedListing({
    required this.images,
    required this.nameLocation,
    required this.location,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 15),
      width: double.infinity,
      height: 110,
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 15),
            width: 84,
            height: 77,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(images),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(12)),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 15, left: 5, right: 5, bottom: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nameLocation,
                    style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: semiBold, wordSpacing: 2, overflow: TextOverflow.ellipsis),
                  ),
                  Text(
                    location,
                    style: subPrimaryTextStyle2.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/icon-sofa.png',
                          width: 28,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          'assets/icons/icon-bathroom.png',
                          width: 28,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          'assets/icons/icon-home.png',
                          width: 28,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, right: 10, bottom: 15, left: 10),
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              'assets/icons/icon-wishlist.png',
              width: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '\$${price.toString()}',
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: semiBold),
                ),
                Text(
                  '/month',
                  style: subPrimaryTextStyle2.copyWith(
                      fontSize: 12, fontWeight: semiBold),
                )
              ],
            ),
          ],
            ),
          )
        ],
      ),
    );
  }
}
