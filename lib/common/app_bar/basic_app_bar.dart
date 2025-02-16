import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget{
  const BasicAppBar({super.key,required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: Container(height: 25,width: 25,
        margin: EdgeInsets.only(left: 17),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black,
            width: 2
          )
        ),
        child: Center(child: Icon(CupertinoIcons.arrow_left)),),
      ),
      title: Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Color(0xff000000)),),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
