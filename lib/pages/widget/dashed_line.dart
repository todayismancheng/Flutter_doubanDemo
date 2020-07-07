
import 'package:flutter/material.dart';

class LEODashedLine extends StatelessWidget {

  final Axis axis;
  final int count;
  final double dashedWidth;
  final double dashedHeight;
  final Color color;

  LEODashedLine({
    this.axis = Axis.horizontal,
    this.count = 10,
    this.dashedWidth = 1,
    this.dashedHeight = 1,
    this.color = Colors.orange
  });


  @override
  Widget build(BuildContext context) {
    return Flex(
      direction:axis,
      children: List.generate(count, (_){
        return SizedBox(
            width: dashedWidth,
          height: dashedHeight,
          child: DecoratedBox(
              decoration: BoxDecoration(
                color: color,
              )
          ),
        );
      }),
    );
  }
}
