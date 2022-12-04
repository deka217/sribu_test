import 'package:flutter/material.dart';
import 'package:sribu_test/pages/widgets/movie_card.dart';
import 'package:sribu_test/pages/widgets/movie_tile.dart';
import 'package:sribu_test/theme.dart';
import 'package:provider/provider.dart';
import 'package:sribu_test/models/movie_model.dart';
import 'package:sribu_test/provider/movie_provider.dart';

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
    // ignore: unused_local_variable
    MovieProvider movieProvider = Provider.of<MovieProvider>(context);

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
                      '@user',

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
                  'Drama',
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
                  'Comedi',
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
                  'Action',
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
                  'Science Fiction',
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
                  'Bollywood',
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
          children: movieProvider.movies
              .map(
                (movie) => MovieTile(movie),
              )
              .toList(),
          // [
          // MovieTile(),
          //   MovieTile(),
          //   MovieTile(),
          //   MovieTile(),
          //   MovieTile(),
          //   MovieTile(),
          //   MovieTile(),
          //   MovieTile(),
          //   MovieTile(),
          // ],
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
