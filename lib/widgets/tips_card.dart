import 'package:cozy_app/models/tips.dart';
import 'package:cozy_app/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;
  TipsCard(this.tips);
  

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        Image.asset(
          tips.imageUrl,
          height: 80,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
            tips.title,
            style: blacktittleStyle.copyWith(
              fontSize: 18
            ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Updated ${tips.updatedAt}',
              style: greyTextStyle
            )
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {}, 
          icon: Icon(
            Icons.chevron_right,
            color: greyTextsatu,)
        )

      ],
    );
  }
}