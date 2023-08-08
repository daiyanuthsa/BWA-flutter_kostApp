// ignore_for_file: prefer_const_constructors

import 'package:cozy_app/models/city.dart';
import 'package:cozy_app/models/space.dart';
import 'package:cozy_app/models/tips.dart';
import 'package:cozy_app/theme.dart';
import 'package:cozy_app/widgets/bottom_navbar_item.dart';
import 'package:cozy_app/widgets/city_card.dart';
import 'package:cozy_app/widgets/space_card.dart';
import 'package:cozy_app/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  get floatingActionButton => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: 24,
            ),
            // NOTE: TITTLE / HEADER
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text('Explore Now', style: blacktittleStyle.copyWith(
                fontSize: 24,
              ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: edge
              ),
              child: Text(
                'Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(
                fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE: POPULAR CITIES
             Padding(
              padding: EdgeInsets.only(
                left: edge
              ),
              child: Text(
                'Popular Cities',
                style: regularTextStyle.copyWith(
                fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                     width: edge,
                  ),
                  cityCard(
                    City(
                      id: 1,
                      name: 'Jakarta',
                      imageUrl: 'assets/city1.png',
                      isPopular: false,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  cityCard(City(
                      id: 2,
                      name: 'Bandung',
                      imageUrl: 'assets/city2.png',
                      isPopular: true,
                    ),
                  ),
                  SizedBox(
                     width: 20,
                  ),
                  cityCard(
                    City(
                      id: 3,
                      name: 'Suraabaya',
                      imageUrl: 'assets/city3.png',
                      isPopular: false,
                    ),
                  ),
                  SizedBox(
                     width: 20,
                  ),
                  cityCard(
                    City(
                      id: 3,
                      name: 'Malang',
                      imageUrl: 'assets/city4.png',
                      isPopular: false,
                    ),
                  ),
                  SizedBox(
                     width: edge,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE: RECOMENDED SPACE
            Padding(
              padding: EdgeInsets.only(
                left: edge
              ),
              child: Text(
                'Recommended Space',
                style: regularTextStyle.copyWith(
                fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24
              ),
              child: Column(
                children: [
                  SpaceCard(
                    Space(
                    id: 1,
                    name: 'Kuretakeso Hott',
                    imageUrl: 'assets/space1.png', 
                    price: 52, 
                    city: 'city', 
                    country: 'Indonesia', 
                    rating: 4
                    )
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    Space(
                    id: 2,
                    name: 'Roemah Nenek',
                    imageUrl: 'assets/space2.png', 
                    price: 11, 
                    city: 'Seattle, Bogor', 
                    country: 'Indonesia', 
                    rating: 5
                    )
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    Space(
                    id: 3,
                    name: 'Kuretakeso Hott',
                    imageUrl: 'assets/space3.png', 
                    price: 20, 
                    city: 'city', 
                    country: 'Indonesia', 
                    rating: 3
                    )
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            //NOTE: TIPS & GUIDENCE
            Padding(
              padding: EdgeInsets.only(
                left: edge
              ),
              child: Text(
                'Tips & Guidance',
                style: regularTextStyle.copyWith(
                fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  TipsCard(
                    Tips(id: 1, 
                    title: 'City Guidelines', 
                    imageUrl: 'assets/guide_icon.png', 
                    updatedAt: '20 Apr')
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(id: 2,
                     title: 'Jakarta Fairship',
                      imageUrl: 'assets/guide_icon2.png',
                      updatedAt: '11 Dec')
                  )
                ],
              ),
            ),
            SizedBox(
              height : 70 + edge,
            ), 
          ],
        )
      ),
      floatingActionButton: Container(
                height: 65,
                width: 327,
                decoration: BoxDecoration(
                  color: Color(0xffF6F7F8),
                  borderRadius: BorderRadius.circular(23) 
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomNavbarItem(
                      imageurl: 'assets/icon_home1.png',
                      isActive: true,
                    ),
                    BottomNavbarItem(
                      imageurl: 'assets/icon_mail.png',
                      isActive: false,
                    ),
                    BottomNavbarItem(
                      imageurl: 'assets/icon_card.png',
                      isActive: false,
                    ),
                    BottomNavbarItem(
                      imageurl: 'assets/icon_love.png',
                      isActive: false,
                    ),
                  ],
                ),
              ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}