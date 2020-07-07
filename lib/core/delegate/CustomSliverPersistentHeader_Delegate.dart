import 'package:flutter/material.dart';
import 'dart:math' as math;

class CustomSliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {

  CustomSliverPersistentHeaderDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  })// 如果 assert 内部条件不成立，会报错
      : assert(maxHeight != null),
        assert(minHeight != null),
        assert(child != null),
        assert(minHeight <= maxHeight),
        super();

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max((minHeight ?? kToolbarHeight), minExtent);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(CustomSliverPersistentHeaderDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}