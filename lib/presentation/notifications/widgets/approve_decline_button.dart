import 'package:flutter/cupertino.dart';

class ApproveDeclineButton extends StatelessWidget {
  const ApproveDeclineButton({super.key,required this.approve});
  final bool approve;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: approve?Color(0xffE95744):Color(0xff43464C)
      ),
      child: Center(
        child: Text(approve?"Approve":"Decline",
          style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: approve?Color(0xffFFFFFF):Color(0xA6FFFFFF)),),
      ),

    );
  }
}
