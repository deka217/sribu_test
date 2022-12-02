import 'package:flutter/material.dart';
// import 'package:sribu_test/pages/widgets/movie_card.dart';
// import 'package:sribu_test/pages/widgets/movie_tile.dart';
// // import 'package:shamo_flutter/http/http.dart';
import 'package:sribu_test/theme.dart';
// import 'package:provider/provider.dart';
// import 'package:shamo/models/user_model.dart';
// import 'package:shamo/providers/auth_provider.dart';
// import 'package:shamo/providers/product_provider.dart';
// import 'package:shamo_flutter/theme.dart';
// import 'package:shamo/widgets/product_card.dart';
// import 'package:shamo/widgets/product_tile.dart';

class HomePagee extends StatelessWidget {
  const HomePagee({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_element
    Widget header() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/home');
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
                      'assets/Profile.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    // ignore: non_constant_identifier_names, unused_element
    // Widget grid(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return MaterialApp(
      // child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: backgroundColor1,
        appBar: AppBar(),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline5,
              ),
            );
          }),
        ),
      ),
      // ),
    );
    // }

    // return MaterialApp(
    //   home: Scaffold(
    //     body: CustomScrollView(
    //       slivers: <Widget>[
    //         const SliverAppBar(
    //             actions: <Widget>[
    //               Icon(
    //                 Icons.camera_front,
    //                 size: 40,
    //               )
    //             ],
    //             title: Text("SliverGrid Example"),
    //             leading: Icon(Icons.menu),
    //             backgroundColor: Colors.green,
    //             expandedHeight: 100.0,
    //             floating: true,
    //             pinned: true),
    //         SliverGrid(
    //           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //             crossAxisCount: 4,
    //           ),
    //           delegate:
    //               SliverChildBuilderDelegate((BuildContext context, int index) {
    //             // ignore: unnecessary_new
    //             return new Container(
    //                 // color: _randomPaint(index),
    //                 height: 150.0);
    //           }),
    //         ),
    //       ],
    //     ),
    //   ),
    // );

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
    // Widget header() {
    //   return Container(
    //     margin: EdgeInsets.only(
    //       top: defaultMargin,
    //       left: defaultMargin,
    //       right: defaultMargin,
    //     ),
    //     child: Row(
    //       children: [
    //         Expanded(
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(
    //                 // 'Hallo, ${user.name}',
    //                 'Hallo, User',

    //                 style: primaryTextStyle.copyWith(
    //                   fontSize: 24,
    //                   fontWeight: semiBold,
    //                 ),
    //               ),
    //               Text(
    //                 // '@${user.username}',
    //                 '@assep',

    //                 style: subtitleTextStyle.copyWith(
    //                   fontSize: 16,
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         Container(
    //           width: 54,
    //           height: 54,
    //           decoration: const BoxDecoration(
    //             shape: BoxShape.circle,
    //             image: DecorationImage(
    //               // image: NetworkImage(
    //               image: AssetImage(
    //                 // user.profilePhotoUrl,
    //                 'assets/Profile.png',
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   );
    // }

    // // ignore: unused_element
    // Widget categories() {
    //   return Container(
    //     margin: EdgeInsets.only(
    //       top: defaultMargin,
    //     ),
    //     child: SingleChildScrollView(
    //       scrollDirection: Axis.horizontal,
    //       child: Row(
    //         children: [
    //           SizedBox(
    //             width: defaultMargin,
    //           ),
    //           Container(
    //             // ignore: prefer_const_constructors
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 12,
    //               vertical: 10,
    //             ),
    //             // ignore: prefer_const_constructors
    //             margin: EdgeInsets.only(right: 16),
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(12),
    //               color: primaryColor,
    //             ),
    //             child: Text(
    //               'All Shoes',
    //               style: primaryTextStyle.copyWith(
    //                 fontSize: 13,
    //                 fontWeight: medium,
    //               ),
    //             ),
    //           ),
    //           Container(
    //             // ignore: prefer_const_constructors
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 12,
    //               vertical: 10,
    //             ),
    //             // ignore: prefer_const_constructors
    //             margin: EdgeInsets.only(right: 16),
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(12),
    //               border: Border.all(
    //                 color: subtitleColor,
    //               ),
    //               color: transparentColor,
    //             ),
    //             child: Text(
    //               'Running',
    //               style: subtitleTextStyle.copyWith(
    //                 fontSize: 13,
    //                 fontWeight: medium,
    //               ),
    //             ),
    //           ),
    //           Container(
    //             // ignore: prefer_const_constructors
    //             padding: EdgeInsets.symmetric(
    //               horizontal: 12,
    //               vertical: 10,
    //             ),
    //             margin: const EdgeInsets.only(right: 16),
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(12),
    //               border: Border.all(
    //                 color: subtitleColor,
    //               ),
    //               color: transparentColor,
    //             ),
    //             child: Text(
    //               'Training',
    //               style: subtitleTextStyle.copyWith(
    //                 fontSize: 13,
    //                 fontWeight: medium,
    //               ),
    //             ),
    //           ),
    //           Container(
    //             padding: const EdgeInsets.symmetric(
    //               horizontal: 12,
    //               vertical: 10,
    //             ),
    //             margin: const EdgeInsets.only(right: 16),
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(12),
    //               border: Border.all(
    //                 color: subtitleColor,
    //               ),
    //               color: transparentColor,
    //             ),
    //             child: Text(
    //               'Basketball',
    //               style: subtitleTextStyle.copyWith(
    //                 fontSize: 13,
    //                 fontWeight: medium,
    //               ),
    //             ),
    //           ),
    //           Container(
    //             padding: const EdgeInsets.symmetric(
    //               horizontal: 12,
    //               vertical: 10,
    //             ),
    //             margin: const EdgeInsets.only(right: 16),
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(12),
    //               border: Border.all(
    //                 color: subtitleColor,
    //               ),
    //               color: transparentColor,
    //             ),
    //             child: Text(
    //               'Hiking',
    //               style: subtitleTextStyle.copyWith(
    //                 fontSize: 13,
    //                 fontWeight: medium,
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   );
    // }

    // //     //     body: GridView.count(
    // //     //   crossAxisCount: 3,
    // //     //   children: List.generate(9, (index) {
    // //     //     // ignore: avoid_unnecessary_containers
    // //     //     return Container(
    // //     //       // ignore: prefer_const_constructors
    // //     //       child: Card(
    // //     //         color: Colors.deepPurpleAccent,
    // //     //       ),
    // //     //     );
    // //     //   }),
    // //     // ))
    // //   );
    // // }

    // ignore: dead_code
    return ListView(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        header(),
        // ignore: prefer_const_constructors
        // Scaffold(),

        // popularProductsTitle(),
        // popularProducts(),
        // newArrivalsTitle(),
        // newArrivals(),
      ],
    );
    // return header();
  }
}
