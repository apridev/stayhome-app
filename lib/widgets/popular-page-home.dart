import 'package:flutter/material.dart';
import 'package:homestay_app/template.dart';

class PopularPageHomeTile extends StatelessWidget {

  String images;
  String nameLocation;
  String location;
  double price;
  String sofa;
  String bathroom;
  String home;

  PopularPageHomeTile({
    required this.images,
    required this.nameLocation,
    required this.location,
    required this.price,
    required this.sofa,
    required this.bathroom,
    required this.home
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20
      ),
      height: 255,
      width: 230,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ]),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(images),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24))),
          ),
          Container(
            margin: EdgeInsets.only(top: 12, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nameLocation,
                          style: blackTextStyle.copyWith(
                              fontSize: 14, fontWeight: semiBold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          location,
                          style: subPrimaryTextStyle2.copyWith(fontSize: 12),
                        )
                      ],
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '\$${price.toString()}',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: semiBold),
                        ),
                        Text(
                          '/month',
                          style: subPrimaryTextStyle2.copyWith(fontSize: 12),
                        )
                      ],
                    ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icons/icon-sofa.png',
                            width: 35,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            sofa,
                            style: blackTextStyle.copyWith(
                                fontSize: 12, fontWeight: semiBold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icons/icon-bathroom.png',
                            width: 35,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            bathroom,
                            style: blackTextStyle.copyWith(
                                fontSize: 12, fontWeight: semiBold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icons/icon-home.png',
                            width: 35,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            home,
                            style: blackTextStyle.copyWith(
                                fontSize: 12, fontWeight: semiBold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
