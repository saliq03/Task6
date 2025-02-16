import 'package:assignment/common/button/basic_app_button.dart';
import 'package:assignment/core/configs/colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpdateWidget extends StatelessWidget {
  const UpdateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Update",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.all(15),
            height: 290,
            decoration: BoxDecoration(
              color: Color(0xffFCECBB),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x1A000000),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(4, 4),
                ),
              ],

            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Media Upload",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),),
                        Text("Add your documents here, and you can upload up to 5 files max",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.017,fontWeight: FontWeight.w400,letterSpacing: 0.01,),),
                      ],
                    ),
                    Icon(CupertinoIcons.xmark,size: 20,)
                  ],
                ),
                SizedBox(height: 15,),
                Container(
                  height: 93,
                  width: double.infinity,
                  color: Colors.white,

                  child: CustomPaint(
                    painter: DashedBorderPainter(color: AppColors.primary, strokeWidth: 1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.cloud_upload_outlined,color: AppColors.primary,),
                        SizedBox(height: 10,),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: "Drag your file(s) or ",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black// Your original color
                              ),
                            ),
                            TextSpan(
                              text: "browse",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: AppColors.primary // Red asterisk
                              ),
                            ),
                          ],
                          ),
                        ),
                        SizedBox(height: 2,),
                        Text("Max 10 MB files are allowed",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),)
                      ],
                      ),
                  ),
                ),
                SizedBox(height: 15,),
                Text("Only support .jpg, .png and .svg and zip files",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Color(0xff343434)),),
                SizedBox(height: 5,),
                Center(child: Text("OR",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w400,color: Color(0xff343434)),)),
                SizedBox(height: 5,),
                Text("Upload from URL",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w700,),),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: AppColors.primary,
                      width: 0.7
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: false,
                            hintText: "Enter url",
                            hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff707070)),
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none,),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide.none,),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 3),
                          width: 50,height: 20,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Center(child: Text("Upload",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w600,color: Colors.white),)),
                        ),
                      )
                    ],),
                )




              ],

            ),
          )

        ],
      ),
    );
  }
}


class DashedBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double dashLength;
  final double gapLength;

  DashedBorderPainter({
    required this.color,
    this.strokeWidth = 1,
    this.dashLength = 5,
    this.gapLength = 3,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final Path path = Path()
      ..addRect(Rect.fromLTWH(0, 0, size.width, size.height));

    double dashOffset = 0.0;
    while (dashOffset < path.computeMetrics().first.length) {
      final pathMetric = path.computeMetrics().first;
      canvas.drawPath(
        pathMetric.extractPath(
          dashOffset,
          dashOffset + dashLength,
        ),
        paint,
      );
      dashOffset += dashLength + gapLength;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
