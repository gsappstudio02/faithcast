import 'package:faithcast/components/homescreen/bannerection.dart';
import 'package:faithcast/components/homescreen/contentslides.dart';
import 'package:faithcast/components/homescreen/searchbarsection.dart';
import 'package:faithcast/components/homescreen/topsection.dart';
import 'package:faithcast/components/title_app_bar.dart';
import 'package:faithcast/models/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kPrimary,
        selectedItemColor: buttonColor,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Iconsax.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined),
              label: 'Explore'
          ),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.more_square),
              label: 'Menu'
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 65),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarTitle(),
              SizedBox(height: 20,),
              TopSection(),
              SizedBox(height: 20,),
              SearchBarSection(),
              SizedBox(height: 20,),
              BannerSection(),
              SizedBox(height: 20,),
              ContentSlides(title: 'Recently added',),
              SizedBox(height: 20,),
              ContentSlides(title: 'Trending',),
              SizedBox(height: 20,),
              ContentSlides(title: 'Top Artists',)
            ],
          ),
        ),
      ),
    );
  }
}
