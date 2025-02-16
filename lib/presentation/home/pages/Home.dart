import 'package:assignment/common/app_bar/basic_app_bar.dart';
import 'package:assignment/common/button/basic_app_button.dart';
import 'package:assignment/presentation/home/widgets/update.dart';
import 'package:assignment/presentation/home/widgets/uploaded_document.dart';
import 'package:assignment/presentation/notifications/pages/notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(title: "DOCUMENT NAME"),
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40,top: 10),
            child: Text("Company_Name",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700),),
          ),
          SizedBox(height: 20,),
          UploadedDocumentWidget(),
          SizedBox(height: 10,),
          UpdateWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 15),
            child: Text("By tapping Continue, you will be charged, your subscription will auto-renew for the same price and package length until you cancel via App Store settings, and you agree to our Terms.",
            style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Color(0xff878787)),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40,bottom: 10),
            child: BasicAppButton(title: "Continue - \$12.99 total", onPress: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>NotificationsPage()));
            }),
          )

        ],
      ),
    );
  }
}
