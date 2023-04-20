import 'package:flutter/material.dart';
import 'package:note_app/my_colors.dart';
import 'package:note_app/ui_helper/Icon_container.dart';

class NoteDetails extends StatelessWidget {
  String decs,title,date;
  NoteDetails({Key? key,required this.title,required this.date,required this.decs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(onTap:(){
                      Navigator.pop(context);
                    },child: IconContainer(icon: Icons.arrow_back_ios)),
                    IconContainer(icon: Icons.edit_calendar_outlined)
                  ],
                ),
                SizedBox(height: 20,),
                Text(title,style: TextStyle(
                  color: MyColors.headingText,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 20,),
                Text(date,style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 24,
                    fontWeight: FontWeight.w400
                ),),

                SizedBox(height: 20,),
                Text(decs,style: TextStyle(
                    color:Colors.white60,
                    fontSize: 20,
                    wordSpacing: 2,
                    fontWeight: FontWeight.w400,
                  letterSpacing: 1.5
                ),),
              ],
            ),
          ),
        )
      ),
    );
  }
}
