import 'package:flutter/material.dart';
// import 'package:sribu_test/main.dart';
import 'package:sribu_test/pages/home/home_page.dart';
// import 'package:shamo_flutter/pages/home/home_page.dart';
import 'package:sribu_test/pages/home/profile_page.dart';
// import 'package:shamo_flutter/pages/home/wishlist_page.dart';
// import 'package:shamo_flutter/pages/sign_in_page.dart';
// import 'package:shamo_flutter/pages/sign_up_page.dart';
// import 'package:shamo_flutter/pages/splash_page.dart';
import 'package:sribu_test/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // PageProvider pageProvider = Provider.of<PageProvider>(context);

    // Widget cartButton() {
    //   return FloatingActionButton(
    //     onPressed: () {
    //       Navigator.pushNamed(context, '/cart');
    //     },
    //     backgroundColor: secondaryColor,
    //     child: Image.asset(
    //       'assets/Cart Icon.png',
    //       width: 20,
    //     ),
    //   );
    // }

    // ignore: unused_element
    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: backgroundColor4,
            currentIndex: currentIndex,
            onTap: (value) {
              // ignore: avoid_print
              print(value);
              setState(() {
                currentIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/House.png',
                    // 'assets/logo.png',
                    width: 21,
                    color: currentIndex == 0
                        ? primaryColor
                        : const Color(0xff808191),
                  ),
                ),
                label: '',
              ),
              // BottomNavigationBarItem(
              //   icon: Container(
              //     margin: const EdgeInsets.only(
              //       top: 20,
              //       bottom: 10,
              //     ),
              //     child: Image.asset(
              //       'assets/details-icon.png',
              //       width: 20,
              //       color: currentIndex == 1
              //           ? primaryColor
              //           : const Color(0xff808191),
              //     ),
              //   ),
              //   label: '',
              // ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/Profile.png',
                    width: 20,
                    color: currentIndex == 2
                        ? primaryColor
                        : const Color(0xff808191),
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    // Widget customBottomNav() {
    //   return ClipRRect(
    //     borderRadius: BorderRadius.vertical(
    //       top: Radius.circular(30),
    //     ),
    //     child: BottomAppBar(
    //       shape: CircularNotchedRectangle(),
    //       notchMargin: 12,
    //       clipBehavior: Clip.antiAlias,
    //       child: BottomNavigationBar(
    //         backgroundColor: backgroundColor4,
    //         currentIndex: pageProvider.currentIndex,
    //         onTap: (value) {
    //           print(value);
    //           pageProvider.currentIndex = value;
    //         },
    //         type: BottomNavigationBarType.fixed,
    //         items: [
    //           BottomNavigationBarItem(
    //             icon: Container(
    //               margin: EdgeInsets.only(
    //                 top: 20,
    //                 bottom: 10,
    //               ),
    //               child: Image.asset(
    //                 'assets/icon_home.png',
    //                 width: 21,
    //                 color: pageProvider.currentIndex == 0
    //                     ? primaryColor
    //                     : Color(0xff808191),
    //               ),
    //             ),
    //             label: '',
    //           ),
    //           BottomNavigationBarItem(
    //             icon: Container(
    //               margin: EdgeInsets.only(
    //                 top: 20,
    //                 bottom: 10,
    //               ),
    //               child: Image.asset(
    //                 'assets/icon_chat.png',
    //                 width: 20,
    //                 color: pageProvider.currentIndex == 1
    //                     ? primaryColor
    //                     : Color(0xff808191),
    //               ),
    //             ),
    //             label: '',
    //           ),
    //           BottomNavigationBarItem(
    //             icon: Container(
    //               margin: EdgeInsets.only(
    //                 top: 20,
    //                 bottom: 10,
    //               ),
    //               child: Image.asset(
    //                 'assets/icon_wishlist.png',
    //                 width: 20,
    //                 color: pageProvider.currentIndex == 2
    //                     ? primaryColor
    //                     : Color(0xff808191),
    //               ),
    //             ),
    //             label: '',
    //           ),
    //           BottomNavigationBarItem(
    //             icon: Container(
    //               margin: EdgeInsets.only(
    //                 top: 20,
    //                 bottom: 10,
    //               ),
    //               child: Image.asset(
    //                 'assets/icon_profile.png',
    //                 width: 18,
    //                 color: pageProvider.currentIndex == 3
    //                     ? primaryColor
    //                     : Color(0xff808191),
    //               ),
    //             ),
    //             label: '',
    //           ),
    //         ],
    //       ),
    //     ),
    //   );
    // }

    Widget body() {
      // switch (pageProvider.currentIndex) {
      switch (currentIndex) {
        case 0:
          // ignore: prefer_const_constructors
          return HomePage();
          // ignore: dead_code
          break;
        // case 1:
        //   return const HomePage();
        // ignore: dead_code
        // break;
        case 1:
          return const ProfilePage();
          // ignore: dead_code
          break;

        default:
          // ignore: prefer_const_constructors
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      // floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),

      body: body(),
      // const Center(
      //   child: Text('Main Page'),
      // ),
      // backgroundColor:
      //     pageProvider.currentIndex == 0 ? backgroundColor1 : backgroundColor3,
      // floatingActionButton: cartButton(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: customBottomNav(),
      // body: body(),
    );
  }
}
