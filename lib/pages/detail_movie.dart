// ignore_for_file: prefer_const_constructors

// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sribu_test/models/movie_model.dart';
// import 'package:shamo/providers/cart_provider.dart';
// import 'package:shamo/providers/wishlist_provider.dart';
import 'package:sribu_test/theme.dart';

// ignore: use_key_in_widget_constructors
class DetailMovie extends StatefulWidget {
  final MovieModel movie;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  DetailMovie(this.movie);

  @override
  // ignore: library_private_types_in_public_api
  _DetailMovieState createState() => _DetailMovieState();
}

class _DetailMovieState extends State<DetailMovie> {
  List images = [
    'assets/shoes1.png',
    'assets/shoes1.png',
    'assets/shoes1.png',
  ];

  List familiarShoes = [
    'assets/shoes1.png',
    // 'assets/image_shoes2.png',
    // 'assets/image_shoes3.png',
    // 'assets/image_shoes4.png',
    // 'assets/image_shoes5.png',
    // 'assets/image_shoes6.png',
    // 'assets/image_shoes7.png',
    // 'assets/image_shoes8.png',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);
    // CartProvider cartProvider = Provider.of<CartProvider>(context);

    // ignore: unused_element
    Future<void> showSuccessDialog() async {
      return showDialog(
        context: context,
        // ignore: sized_box_for_whitespace
        builder: (BuildContext context) => Container(
          width: MediaQuery.of(context).size.width - (2 * defaultMargin),
          child: AlertDialog(
            backgroundColor: backgroundColor3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: primaryTextColor,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/icon_success.png',
                    width: 100,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Hurray :)',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),

                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Item added successfully',
                    style: secondaryTextStyle,
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 20,
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: 154,
                    height: 44,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/cart');
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'View My Cart',
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    // ignore: unused_element
    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 16 : 4,
        height: 4,
        margin: EdgeInsets.symmetric(
          horizontal: 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? primaryColor : Color(0xffC4C4C4),
        ),
      );
    }

    Widget familiarShoesCard(String imageUrl) {
      return Container(
        width: 54,
        height: 54,
        // ignore: prefer_const_constructors
        margin: EdgeInsets.only(
          right: 16,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
          borderRadius: BorderRadius.circular(6),
        ),
      );
    }

    Widget header() {
      // ignore: unused_local_variable
      int index = -1;

      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  // ignore: prefer_const_constructors
                  child: Icon(
                    Icons.chevron_left,
                  ),
                ),
                Icon(
                  Icons.shopping_bag,
                  color: backgroundColor1,
                ),
              ],
            ),
          ),
          // CarouselSlider(
          //   items: widget.product.galleries
          //       .map(
          //         (image) => Image.network(
          //           image.url,
          //           width: MediaQuery.of(context).size.width,
          //           height: 310,
          //           fit: BoxFit.cover,
          //         ),
          //       )
          //       .toList(),
          //   options: CarouselOptions(
          //     initialPage: 0,
          //     onPageChanged: (index, reason) {
          //       setState(() {
          //         currentIndex = index;
          //       });
          //     },
          //   ),
          // ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 20,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: widget.product.galleries.map((e) {
          //     index++;
          //     return indicator(index);
          //   }).toList(),
          // ),
        ],
      );
    }

    Widget content() {
      int index = -1;

      return Container(
        width: double.infinity,
        // ignore: prefer_const_constructors
        margin: EdgeInsets.only(top: 17),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
          color: backgroundColor1,
        ),
        child: Column(
          children: [
            // NOTE: HEADER
            Container(
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // children: [
                      //   // Text(
                      //   //   widget.product.name,
                      //   //   style: primaryTextStyle.copyWith(
                      //   //     fontSize: 18,
                      //   //     fontWeight: semiBold,
                      //   //   ),
                      //   // ),
                      //   Text(
                      //     widget.product.category.name,
                      //     style: secondaryTextStyle.copyWith(
                      //       fontSize: 12,
                      //     ),
                      //   ),
                      // ],
                    ),
                  ),
                  //   GestureDetector(
                  //     onTap: () {
                  //       wishlistProvider.setProduct(widget.product);

                  //       if (wishlistProvider.isWishlist(widget.product)) {
                  //         ScaffoldMessenger.of(context).showSnackBar(
                  //           SnackBar(
                  //             backgroundColor: secondaryColor,
                  //             content: Text(
                  //               'Has been added to the Wishlist',
                  //               textAlign: TextAlign.center,
                  //             ),
                  //           ),
                  //         );
                  //       } else {
                  //         ScaffoldMessenger.of(context).showSnackBar(
                  //           SnackBar(
                  //             backgroundColor: alertColor,
                  //             content: Text(
                  //               'Has been removed from the Wishlist',
                  //               textAlign: TextAlign.center,
                  //             ),
                  //           ),
                  //         );
                  //       }
                  //     },
                  //     child: Image.asset(
                  //       wishlistProvider.isWishlist(widget.product)
                  //           ? 'assets/button_wishlist_blue.png'
                  //           : 'assets/button_wishlist.png',
                  //       width: 46,
                  //     ),
                  //   ),
                ],
              ),
            ),

            // NOTE: PRICE
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 20,
                left: defaultMargin,
                right: defaultMargin,
              ),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    // 'Price starts from',
                    widget.movie.original_title,
                    style: primaryTextStyle,
                  ),
                  // Text(
                  //   '\$${widget.product.price}',
                  //   style: priceTextStyle.copyWith(
                  //     fontSize: 16,
                  //     fontWeight: semiBold,
                  //   ),
                  // ),
                ],
              ),
            ),

            // NOTE: DESCRIPTION
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    widget.movie.overview,
                    style: subtitleTextStyle.copyWith(
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),

            // NOTE: FAMILIAR SHOES
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: defaultMargin,
                    ),
                    child: Text(
                      'Fimiliar Shoes',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: familiarShoes.map((image) {
                        index++;
                        return Container(
                          margin: EdgeInsets.only(
                              left: index == 0 ? defaultMargin : 0),
                          child: familiarShoesCard(image),
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),

            // NOTE: BUTTONS
            //   Container(
            //     width: double.infinity,
            //     margin: EdgeInsets.all(defaultMargin),
            //     child: Row(
            //       children: [
            //         GestureDetector(
            //           onTap: () {
            //             Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                 builder: (context) => DetailChatPage(widget.product),
            //               ),
            //             );
            //           },
            //           child: Container(
            //             width: 54,
            //             height: 54,
            //             decoration: BoxDecoration(
            //               image: DecorationImage(
            //                 image: AssetImage(
            //                   'assets/button_chat.png',
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //         SizedBox(
            //           width: 16,
            //         ),
            //         Expanded(
            //           // ignore: sized_box_for_whitespace
            //           child: Container(
            //             height: 54,
            //             child: TextButton(
            //               onPressed: () {
            //                 // cartProvider.addCart(widget.product);
            //                 showSuccessDialog();
            //               },
            //               style: TextButton.styleFrom(
            //                 shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(12),
            //                 ),
            //                 backgroundColor: primaryColor,
            //               ),
            //               child: Text(
            //                 'Add to Cart',
            //                 style: primaryTextStyle.copyWith(
            //                   fontSize: 16,
            //                   fontWeight: semiBold,
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor6,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
