import 'package:flutter/material.dart';

import '../my_colors.dart';

class IconContainer extends StatelessWidget {
  IconData icon;
  IconContainer({Key? key,required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      child: Icon(
        icon,
        color: MyColors.headingText,
        size: 23,
      ),
      decoration: BoxDecoration(
          color: Colors.grey.shade800,
          borderRadius: BorderRadius.circular(11)),
    );
  }
}
