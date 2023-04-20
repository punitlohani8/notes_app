import 'package:flutter/material.dart';

import '../Screens/details.dart';

class ContainerUi extends StatelessWidget {
  Color color;
  String text;
  String date;
  double? height;
  double? width;
  String desc;
  double? titleFontSize;

  ContainerUi(
      {Key? key,
      required this.color,
      required this.text,
      required this.date,
      this.height,
      this.width,
      this.titleFontSize,
      required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  NoteDetails(title: text, date: date, decs: desc),
            ));
      },
      child: Container(
        width: (width == null) ? width = 170 : width,
        height: (height == null) ? height = 170 : height,
        padding: EdgeInsets.all(20),
        //margin: EdgeInsets.only(left: 4, bottom: 4),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(11)),
        child: (titleFontSize== null)?Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: (titleFontSize==null)?16:titleFontSize,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              date,
              textAlign: TextAlign.end,
              style: TextStyle(
                  color: Color(0xffba7661),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            )
          ],
        ):Stack(
          children: [
            Text(
              text,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: (titleFontSize==null)?16:titleFontSize,
                fontWeight: FontWeight.w500,
              ),
            ),
            Positioned(
              right: 2,
              bottom: 2,
              child: Text(
                date,
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Color(0xffba7661),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        )
      ),
    );
  }
}
