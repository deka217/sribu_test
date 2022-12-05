import 'package:flutter/material.dart';
import 'package:sribu_test/pages/detail_movie.dart';
import 'package:sribu_test/theme.dart';
import 'package:sribu_test/models/movie_model.dart';
// import 'package:shamo/pages/product_page.dart';
// import 'package:shamo_flutter/theme.dart';

// ignore: use_key_in_widget_constructors
class MovieTile extends StatelessWidget {
  final MovieModel movie;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  MovieTile(this.movie);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, '/movie');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailMovie(movie),
          ),
        );
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
              child: Image.network(
                //   ('https://image.tmdb.org/t/p/w500/pFlaoHTZeyNkG83vxsAJiGzfSsa.jpg'),
                movie.base_url + movie.size + movie.poster_path,
                // ('https://picsum.photos/250?image=9'),

                //   Image.asset(
                // 'assets/black_adam.jpg',
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
                    movie.title,
                    // 'Black Adam',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    movie.original_title,
                    // 'Black Adam',
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
                    movie.release_date,
                    // '2022-10-19',
                    style: priceTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  // Text(
                  //   movie.title +
                  //       movie.original_language +
                  //       movie.original_title,
                  //   // '2022-10-19',
                  //   style: priceTextStyle.copyWith(
                  //     fontWeight: medium,
                  //   ),
                  // ),
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
