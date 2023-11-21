import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:premium_shop/controller/global_variable.dart';

class RowWidget extends StatelessWidget {
  String text;
  bool isIcon;
  RowWidget({super.key, required this.text, this.isIcon = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: GoogleFonts.urbanist(
              fontSize: 19, fontWeight: FontWeight.bold, color: textColor),
        ),
        Visibility(
          visible: isIcon,
          child: const Icon(
            Icons.arrow_forward_ios,
            color: textColor,
            size: 19,
          ),
        )
      ],
    );
  }
}
