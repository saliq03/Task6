import 'package:flutter/cupertino.dart';

import '../../../core/configs/assets/images/app_images.dart';
import '../../../core/configs/colors/app_colors.dart';
import 'approve_decline_button.dart';

class NotificationsList extends StatelessWidget {
   NotificationsList({super.key});



  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ListView.builder(
        shrinkWrap: true,
        primary: false,
          itemBuilder: (context,index){
            return Column(
              children: [
                requestWidget(),
                commentWidget(),
                replyWidget()
              ],
            );
          },
      itemCount: 3,)

    );
  }

  Widget requestWidget(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20,right: 20,bottom: 15),
      padding: EdgeInsets.only(left: 20,top: 20,bottom: 15),
      decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 28,width: 28,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(AppImages.avatars[0]))
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "Dennis Nedry ",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xA6000000)// Your original color
                    ),
                  ),
                  TextSpan(
                    text: "commented on ",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xA6000000) // Red asterisk
                    ),
                  ),
                  TextSpan(
                    text: "Isla Nublar SOC2\ncompliance report ",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xA6000000) // Red asterisk
                    ),
                  ),
                ],
                ),
              ),
              SizedBox(height: 10,),
              Row(children: [
                ApproveDeclineButton(approve: true),
                SizedBox(width: 10,),
                ApproveDeclineButton(approve: false)
              ],),
              SizedBox(height: 10,),
              Text("Today at 9:42 AM",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff837D7D)),)

            ],)

        ],),

    );
  }

  Widget commentWidget(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20,right: 20,bottom: 15),
      padding: EdgeInsets.only(left: 20,top: 20,bottom: 15),
      decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 28,width: 28,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(AppImages.avatars[1]))
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "Dennis Nedry ",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xA6000000)// Your original color
                    ),
                  ),
                  TextSpan(
                    text: "commented on ",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xA6000000) // Red asterisk
                    ),
                  ),
                  TextSpan(
                    text: "Isla Nublar SOC2\ncompliance report ",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xA6000000) // Red asterisk
                    ),
                  ),
                ],
                ),
              ),
              SizedBox(height: 10,),
              Text("Last Wednesday at 9:42 AM",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff837D7D)),)

            ],)

        ],),

    );
  }

  Widget replyWidget(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 15),
      padding: EdgeInsets.only(left: 20, top: 20, bottom: 15),
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile picture
          Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AppImages.avatars[2]),
              ),
            ),
          ),
          SizedBox(width: 10),
          // Content section
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Dennis Nedry ",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xA6000000),
                        ),
                      ),
                      TextSpan(
                        text: "commented on ",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xA6000000),
                        ),
                      ),
                      TextSpan(
                        text: "Isla Nublar SOC2\ncompliance report ",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xA6000000),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 34,
                      width: 3.37,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.69),
                        color: Color(0xff697386),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "Oh, I finished de-bugging the phones, but the system's compiling for eighteen minutes, or twenty. So, some minor systems may go on and off for a while.",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xA6000000),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Last Wednesday at 9:42 AM",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff837D7D),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}
