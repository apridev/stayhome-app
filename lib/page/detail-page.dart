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

    Widget nameProduct(){
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
                  Text('Ina Guest House', style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                    overflow: TextOverflow.ellipsis
                  ), maxLines: 2,),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/icons/icon-location.png', width: 20),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Bantul, Yogyakarta', style: subBlackTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: semiBold
                      ),)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20
              ),
              child: Row(
                children: [
                  Text('4.2', style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold
                  ),),
                  SizedBox(
                    width: 8,
                  ),
                  Image.asset('assets/icons/icon-star.png', width: 20,)
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget iconsDetailProduct(){
      return Container(
        margin: EdgeInsets.only(
          top: 15,
          left: 20,
          right: 20
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
                  Text('3', style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold
                  ),)
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
                  Text('2', style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold
                  ),)
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
                  Text('1000', style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold
                  ),),
                  Text('mm', style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold
                  ),)
                ],
              ),
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
          padding: EdgeInsets.zero,
          children: 
            [Column(
              children: [
                imgProduct(),
                nameProduct(),
                iconsDetailProduct()
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(
          left: 20,
          right: 20
        ),
        height: 80,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Price', style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                    letterSpacing: 0.4
                  ),),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text('\$550', style: primaryTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold
                      ),),
                      Text('/month', style: subBlackTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: semiBold
                      ),)
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
                borderRadius: BorderRadius.circular(24)
              ),
              child: TextButton(
                onPressed: (){}, 
                child: Text('Rent', style: whiteTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold
                ),)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
