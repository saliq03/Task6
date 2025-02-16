import 'package:assignment/common/app_bar/basic_app_bar.dart';
import 'package:assignment/core/configs/assets/images/app_images.dart';
import 'package:assignment/core/configs/colors/app_colors.dart';
import 'package:assignment/presentation/notifications/widgets/approve_decline_button.dart';
import 'package:assignment/presentation/notifications/widgets/features.dart';
import 'package:assignment/presentation/notifications/widgets/notifications_list.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(title: "Scratch cards"),
      body: CustomScrollView(
        slivers: [
         FeaturesWidget(),
          SliverToBoxAdapter(child: SizedBox(height: 20,),),
          NotificationsList()

        ],
      ),
    );
  }
}
