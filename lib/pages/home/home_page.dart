import 'package:flutter/material.dart';
import 'package:sribu_test/pages/widgets/movie_card.dart';
import 'package:sribu_test/pages/widgets/movie_tile.dart';
// import 'package:shamo_flutter/http/http.dart';
import 'package:sribu_test/theme.dart';
// import 'package:provider/provider.dart';
// import 'package:shamo/models/user_model.dart';
// import 'package:shamo/providers/auth_provider.dart';
// import 'package:shamo/providers/product_provider.dart';
// import 'package:shamo_flutter/theme.dart';
// import 'package:shamo/widgets/product_card.dart';
// import 'package:shamo/widgets/product_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Text(
    //     'Home Page',
    //     style: primaryTextStyle,
    //   ),
    // );
    // AuthProvider authProvider = Provider.of<AuthProvider>(context);
    // UserModel user = authProvider.user;
    // ProductProvider productProvider = Provider.of<ProductProvider>(context);

    // ignore: unused_element
    Widget header() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/homee');
        },
        child: Container(
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
                  children: [
                    Text(
                      // 'Hallo, ${user.name}',
                      'Hallo, User',

                      style: primaryTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      // '@${user.username}',
                      '@assep',

                      style: subtitleTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 54,
                height: 54,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    // image: NetworkImage(
                    image: AssetImage(
                      // user.profilePhotoUrl,
                      'assets/pngegg.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    // ignore: unused_element
    Widget categories() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Container(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                // ignore: prefer_const_constructors
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
                child: Text(
                  'All Shoes',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                // ignore: prefer_const_constructors
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: subtitleColor,
                  ),
                  color: transparentColor,
                ),
                child: Text(
                  'Running',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: subtitleColor,
                  ),
                  color: transparentColor,
                ),
                child: Text(
                  'Training',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: subtitleColor,
                  ),
                  color: transparentColor,
                ),
                child: Text(
                  'Basketball',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: subtitleColor,
                  ),
                  color: transparentColor,
                ),
                child: Text(
                  'Hiking',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    // ignore: unused_element
    // Widget popularProductsTitle() {
    //   return Container(
    //     margin: EdgeInsets.only(
    //       top: defaultMargin,
    //       left: defaultMargin,
    //       right: defaultMargin,
    //     ),
    //     child: Text(
    //       'Popular Products',
    //       style: primaryTextStyle.copyWith(
    //         fontSize: 22,
    //         fontWeight: semiBold,
    //       ),
    //     ),
    //   );
    // }

    // ignore: unused_element
    // Widget popularProducts() {
    //   return Container(
    //     // ignore: prefer_const_constructors
    //     margin: EdgeInsets.only(top: 14),
    //     child: SingleChildScrollView(
    //       scrollDirection: Axis.horizontal,
    //       child: Row(
    //         children: [
    //           SizedBox(
    //             width: defaultMargin,
    //           ),
    //           Row(children: [
    //             MovieCard(),
    //             MovieCard(),
    //             MovieCard(),
    //           ]
    //               //     // productProvider.products
    //               //     //     .map(
    //               //     //       (product) => ProductCard(product),
    //               //     //     )
    //               //     //     .toList(),
    //               ),
    //         ],
    //       ),
    //     ),
    //   );
    // }

    Widget newArrivalsTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          'Movie List',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget newArrivals() {
      return Container(
        // ignore: prefer_const_constructors
        margin: EdgeInsets.only(
          top: 14,
        ),

        child: Column(
          children: [
            MovieTile(),
            MovieTile(),
            MovieTile(),
          ],
          // productProvider.products
          //     .map(
          //       (product) => ProductTile(product),
          //     )
          //     .toList(),
        ),

        // child: Scaffold(
        //     body: GridView.count(
        //   crossAxisCount: 3,
        //   children: List.generate(9, (index) {
        //     // ignore: avoid_unnecessary_containers
        //     return Container(
        //       // ignore: prefer_const_constructors
        //       child: Card(
        //         color: Colors.deepPurpleAccent,
        //       ),
        //     );
        //   }),
        // ))
      );
    }

    return ListView(
      children: [
        header(),
        categories(),
        // popularProductsTitle(),
        // popularProducts(),
        newArrivalsTitle(),
        newArrivals(),
      ],
    );
    // return header();
  }
}
