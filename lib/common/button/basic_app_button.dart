import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {
  const BasicAppButton({
    required this.title,required this.onPress,
    this.height,
    this.width,
    this.fontSize,
    this.loading=false,

    super.key});
  final VoidCallback onPress;
  final String title;
  final double? height;
  final double?width;
  final double? fontSize;

  final bool loading;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPress,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(width ?? double.infinity, height ?? 51),

        ),
        child: loading?const Center(child: CircularProgressIndicator(color: Colors.white,))
            :
            Text(title,style: TextStyle(color: Colors.white,fontSize: fontSize??18,fontWeight: FontWeight.w600),),

        );
  }
}
