import 'package:flutter/cupertino.dart';

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  SliverAppBarDelegate({required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset,
      bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => 65.0; // Fixed height for each section
  @override
  double get minExtent => 65.0;

  @override
  bool shouldRebuild(covariant SliverAppBarDelegate oldDelegate) {
    return oldDelegate.child != child;
  }
}
