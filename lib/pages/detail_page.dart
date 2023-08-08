// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:cozy_app/pages/home_page.dart';
import 'package:cozy_app/theme.dart';
import 'package:cozy_app/widgets/facility_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        throw (url);
      }
    }

    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: Stack(
        children: [
          Image.asset(
            'assets/space1_detail.png',
            width: MediaQuery.of(context).size.width,
            height: 350,
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              SizedBox(
                height: 328,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  color: white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    // NOTE : TITLE
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kuretakeso Hott',
                                style: blacktittleStyle.copyWith(
                                  fontSize: 22,
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text.rich(TextSpan(
                                  text: '\$52',
                                  style: purppleTextStyle.copyWith(
                                    fontSize: 16,
                                  ),
                                  children: [
                                    TextSpan(
                                        text: ' / month',
                                        style: greyTextStyle.copyWith(
                                          fontSize: 16,
                                        ))
                                  ])),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/star.png',
                                width: 20,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Image.asset(
                                'assets/star.png',
                                width: 20,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Image.asset(
                                'assets/star.png',
                                width: 20,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Image.asset(
                                'assets/star.png',
                                width: 20,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Image.asset(
                                'assets/star.png',
                                width: 20,
                                color: Color(0xff989BA1),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    // NOTE : MAIN FACILITIES
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: edge),
                      child: Text(
                        'Main Facilities',
                        style: regularTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FacilityItem(
                            name: 'kitchen',
                            imageUrl: 'assets/facilities_bar.png',
                            total: 2,
                          ),
                          FacilityItem(
                            name: 'bedroom',
                            imageUrl: 'assets/facilities_bed.png',
                            total: 3,
                          ),
                          FacilityItem(
                            name: ' Big Lemari',
                            imageUrl: 'assets/facilities_cupboard.png',
                            total: 3,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // NOTE : PHOTOS
                    Padding(
                      padding: EdgeInsets.only(left: edge),
                      child: Text(
                        'Main Facilities',
                        style: regularTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 88,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(
                            width: 24,
                          ),
                          Image.asset(
                            'assets/photos1.png',
                            height: 88,
                            width: 110,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Image.asset(
                            'assets/photos2.png',
                            height: 88,
                            width: 110,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Image.asset(
                            'assets/photos3.png',
                            height: 88,
                            width: 110,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Image.asset(
                            'assets/photos4.png',
                            height: 88,
                            width: 110,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // NOTE : LOCATION
                    Padding(
                      padding: EdgeInsets.only(left: edge),
                      child: Text(
                        'Location',
                        style: regularTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Jln. Kappan Sukses No. 20\nPalembang',
                            style: greyTextStyle.copyWith(
                              fontSize: 14,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              launchUrl(
                                  'https://goo.gl/maps/eFFkMm2XGydmW37R6');
                            },
                            child: Image.asset(
                              'assets/btn_loc.png',
                              height: 40,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Book Now',
                          style: whiteTextStyle.copyWith(fontSize: 18),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(primaryColor),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(17)))),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 30,
              horizontal: edge,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  },
                  child: Image.asset(
                    'assets/back_btn.png',
                    height: 40,
                  ),
                ),
                Image.asset(
                  'assets/wishlist_btn.png',
                  height: 40,
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
