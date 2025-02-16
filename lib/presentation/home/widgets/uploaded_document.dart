import 'package:flutter/cupertino.dart';

import '../../../common/button/basic_app_button.dart';

class UploadedDocumentWidget extends StatelessWidget {
  const UploadedDocumentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40,bottom: 15),
          child: Text("Uploaded document",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
        ),
        SizedBox(height: 163,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(width: 40,),
              documentWidget(),
              documentWidget(),
              documentWidget(),
              SizedBox(width: 40,),


            ],),
        )
      ],
    );
  }
  Widget documentWidget(){
   return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.only(left: 20,right: 10,top: 20,bottom: 10),
      height: 163,width: 339,
      decoration: BoxDecoration(
          color: Color(0xffFCECBB),
          borderRadius: BorderRadius.circular(20),

      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Document NAME",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700),),
              Text("Athorsized by",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BasicAppButton(title: "View", onPress: (){},height: 46,width: 125,),
            ],
          )
        ],
      ),
    );
  }

}
