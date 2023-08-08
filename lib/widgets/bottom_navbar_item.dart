import 'package:cozy_app/theme.dart';
import 'package:flutter/material.dart';

class BottomNavbarItem extends StatelessWidget {
  final String imageurl;
  final bool isActive;
  
  BottomNavbarItem({required this.imageurl, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset( imageurl,
        width: 26,),
        Spacer(),
        isActive 
          ? Container(
              width: 30,
              height: 2
              ,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.vertical(
                  top:Radius.circular(1000))
              ),
            )
          : Container()
      ],
    );
  }
}