// ignore_for_file: prefer_const_constructors

import 'package:cozy_app/pages/home_page.dart';
import 'package:cozy_app/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/splash.png')),
            Padding(
                    padding: EdgeInsets.only(
                      top: 50,
                      left: 30,
                    ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/logo.png'))
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Find Cozy House\nto Stay and Happy', 
                      style: blacktittleStyle.copyWith(
                        fontSize: 24,
                      ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Stop membuang banyak waktu\npada tempat yang tidak habitable',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 50,
                    width: 210,
                    child: RaisedButton(
                      onPressed: (){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      color: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Text('Explore Now',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 18
                                  ),
                      ),
                      ),
                  )
              ],
            )
            ),
          ],
        )
      ),
    );
  }
}