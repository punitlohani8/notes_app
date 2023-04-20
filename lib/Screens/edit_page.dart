import 'package:flutter/material.dart';
import 'package:note_app/ui_helper/Icon_container.dart';

class EditPage extends StatelessWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _titleController=TextEditingController();
    var _descController=TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: IconContainer(icon: Icons.arrow_back_ios)),
                  Container(
                    height: 50,
                    width: 80,
                    alignment: Alignment.center,
                    child: Text(
                      'Save',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade800,
                    ),
                  )
                ],
              ),
              SizedBox(height: 12,),
              TextField(
                controller: _titleController,
                cursorHeight: 55,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                ),
                cursorColor: Colors.grey,
                decoration:const InputDecoration(

                  focusColor: Colors.black,
                  border:InputBorder.none,
                  hintText: 'Title',
                  hintStyle: TextStyle(
                    fontSize: 48,
                    color: Colors.grey,
                  )
                ),
              ),
              SizedBox(height: 12,),
              TextField(
                cursorHeight: 35,
                cursorColor: Colors.grey,
                cursorRadius: Radius.circular(20),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
                controller: _descController,
                decoration:const InputDecoration(
                    border:InputBorder.none,
                    hintText: 'Type something...',
                    hintStyle: TextStyle(
                        fontSize: 28,
                        color: Colors.grey
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
