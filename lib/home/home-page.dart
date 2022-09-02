import 'package:flutter/material.dart';
import 'package:homestay_app/template.dart';
import 'package:homestay_app/widgets/featured-listing.dart';
import 'package:homestay_app/widgets/popular-page-home.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/imgs/profile-home.png'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(30)),
            ),
            Column(
              children: [
                Text(
                  'Location',
                  style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: semiBold),
                ),
                Text(
                  'Bandung, Indonesia',
                  style: blackTextStyle.copyWith(
                      fontSize: 12, fontWeight: reguler),
                )
              ],
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40), color: whiteColor2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/icon-notification.png',
                    width: 30,
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget searching() {
      return Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.75,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: subBlackColor, width: 1),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(children: [
                Container(
                    margin: EdgeInsets.only(left: 12, right: 12),
                    child: Icon(
                      Icons.search,
                      color: subBlackColor,
                    )),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(right: 12),
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Search address, city, location',
                      hintStyle: subBlackTextStyle.copyWith(
                          fontSize: 12, fontWeight: reguler),
                    ),
                  ),
                )),
              ]),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40), color: primaryColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/icon-filter.png',
                    width: 30,
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'Popular',
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: semiBold),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 7,
                  height: 7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: primaryColor),
                )
              ],
            ),
            Text(
              'Recomended',
              style: subPrimaryTextStyle2.copyWith(fontSize: 14),
            ),
            Text(
              'Best Seller',
              style: subPrimaryTextStyle2.copyWith(fontSize: 14),
            ),
            Text(
              'Nearest',
              style: subPrimaryTextStyle2.copyWith(fontSize: 14),
            ),
          ],
        ),
      );
    }

    Widget popularProduct() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: EdgeInsets.only(right: 20),
          child: Row(
            children: [
              PopularPageHomeTile(
                  images: 'assets/imgs/product-1.png',
                  nameLocation: 'Ina Guest House',
                  location: 'Bantul, Yogyakarta',
                  price: 599,
                  sofa: '3',
                  bathroom: '2',
                  home: '1000mm'),
              PopularPageHomeTile(
                  images: 'assets/imgs/product-2.png',
                  nameLocation: 'Sun Light Star',
                  location: 'Lembang, Bandung',
                  price: 321,
                  sofa: '2',
                  bathroom: '1',
                  home: '700mm'),
            ],
          ),
        ),
      );
    }

    Widget titleHeader() {
      return Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Featured Listing',
                style: blackTextStyle.copyWith(
                    fontSize: 14, fontWeight: semiBold, wordSpacing: 2),
              ),
              Text(
                'See all',
                style: subPrimaryTextStyle2.copyWith(
                    fontSize: 14, fontWeight: semiBold),
              )
            ],
          ));
    }

    return Scaffold(
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
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    header(),
                    SizedBox(
                      height: 30,
                    ),
                    searching(),
                    SizedBox(
                      height: 15,
                    ),
                    categories(),
                    SizedBox(
                      height: 20,
                    ),
                    popularProduct(),
                    SizedBox(
                      height: 20,
                    ),
                    titleHeader(),
                    SizedBox(
                      height: 20,
                    ),
                    FeaturedListing(
                        images: 'assets/imgs/product-3.png',
                        nameLocation: 'Villa Seven Tree',
                        location: 'Bali, Indonesia',
                        price: 630
                    ),
                    FeaturedListing(
                        images: 'assets/imgs/product-4.png',
                        nameLocation: 'The Sankara Garden II',
                        location: 'Semarang, Indonesia',
                        price: 512
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
