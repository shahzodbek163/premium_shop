import 'package:flutter/material.dart';
import 'package:premium_shop/controller/global_variable.dart';

class CircleContainerWidget extends StatelessWidget {
  const CircleContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61,
      width: 61,
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: mainColor,
          width: 2,
        ),
      ),
      child: Image.asset("asset/soatlar 1.png"),
    );
  }
}
