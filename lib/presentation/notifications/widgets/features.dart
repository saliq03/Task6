import 'package:assignment/core/configs/colors/app_colors.dart';
import 'package:assignment/presentation/notifications/widgets/silver_app_bar_deligate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeaturesWidget extends StatelessWidget {
   FeaturesWidget({super.key});

  final List<String> comp=["All","Feature","Feature","Feature","Feature"];

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      floating: true,
      delegate: SliverAppBarDelegate(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder:(context,index){
                return Container(
                  height: 45,
                  margin: EdgeInsets.only(left: 10,top: 10,bottom: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20,),
                  decoration: BoxDecoration(
                      color: index==0?AppColors.primary:AppColors.secondary,
                      borderRadius: BorderRadius.circular(19),
                  ),
                  child: Center(child: Text(comp[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,color: index==0?Colors.white:Colors.black),)),);
              }, itemCount: comp.length)
      ),
    );
  }


}
