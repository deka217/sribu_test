import 'package:flutter/material.dart';
import 'package:sribu_test/models/movie_model.dart';
// import 'package:shamo/pages/product_page.dart';
import 'package:sribu_test/theme.dart';

// ignore: use_key_in_widget_constructors
class MovieCard extends StatelessWidget {
  final MovieModel movie;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  MovieCard(this.movie);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/movie');
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => ProductPage(product),
        //   ),
        // );
      },
      // ignore: unused_label

      // child:

      child: Container(
        width: 215,
        height: 278,
        margin: EdgeInsets.only(
          right: defaultMargin,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // color: primaryTextColor,
          // ignore: prefer_const_constructors
          color: Color(0xffECEDEF),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // ignore: prefer_const_constructors
          SizedBox(
            height: 30,
          ),
          Image.network(
            movie.poster_path,
            // Image.asset(
            //   'assets/black_adam.jpg',
            width: 215,
            height: 150,
            fit: BoxFit.cover,
          ),
          Container(
            // ignore: prefer_const_constructors
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                movie.original_title,
                // 'Hiking',
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
                'COURT VISION 2.0',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 6,
              ),
              Text(
                // '\$${product.price}',
                '\$78,88',
                style: priceTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              ),
            ]),
          )
        ]),
      ),
      // Container(
      //   margin: EdgeInsets.symmetric(
      //     horizontal: 20,
      //   ),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text(
      //         product.category.name,
      //         style: secondaryTextStyle.copyWith(
      //           fontSize: 12,
      //         ),
      //       ),
      //       SizedBox(
      //         height: 6,
      //       ),
      //       Text(
      //         product.name,
      //         style: blackTextStyle.copyWith(
      //           fontSize: 18,
      //           fontWeight: semiBold,
      //         ),
      //         overflow: TextOverflow.ellipsis,
      //         maxLines: 1,
      //       ),
      //       SizedBox(
      //         height: 6,
      //       ),
      //       Text(
      //         '\$${product.price}',
      //         style: priceTextStyle.copyWith(
      //           fontSize: 14,
      //           fontWeight: medium,
      //         ),
      // ),
      // ],
      // ),
      // ),
      //     ],
      //   ),
      // ),
    );
  }
}
