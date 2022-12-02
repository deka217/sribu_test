import 'package:flutter/material.dart';
import 'package:sribu_test/theme.dart';
// import 'package:shamo/models/product_model.dart';
// import 'package:shamo/pages/product_page.dart';
// import 'package:shamo_flutter/theme.dart';

// ignore: use_key_in_widget_constructors
class MovieTile extends StatelessWidget {
  // final ProductModel product;
  // ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/movie');
      },
      child: Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          // top: defaultMargin,
          bottom: defaultMargin,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child:
                  // Image.network(
                  //   product.galleries[0].url,
                  Image.asset(
                'assets/black_adam.jpg',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    // product.category.name,
                    'Black Adam',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    // product.name,
                    'Black Adam',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                    maxLines: 1,
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    // '\$${product.price}',
                    '2022-10-19',
                    style: priceTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    // return GestureDetector(
    //   onTap: () {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //         builder: (context) => ProductPage(product),
    //       ),
    //     );
    //   },
    //   child: Container(
    //     margin: EdgeInsets.only(
    //       left: defaultMargin,
    //       right: defaultMargin,
    //       bottom: defaultMargin,
    //     ),
    //
  }
}