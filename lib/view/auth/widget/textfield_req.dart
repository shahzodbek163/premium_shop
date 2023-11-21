import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextFieldReq extends StatelessWidget {
  final String hintext;
  final bool onReq;
  final bool kalendar;
  const TextFieldReq({
    super.key,
    required this.hintext,
    required this.onReq,
    this.kalendar = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              hintext,
              style: GoogleFonts.urbanist(
                color: const Color(0xFF9E9E9E),
                fontSize: 14,
              ),
            ),
            onReq
                ? Text(
                    " *",
                    style: GoogleFonts.urbanist(
                      color: const Color(0xFFF27A1A),
                      fontSize: 14,
                    ),
                  )
                : const Gap(0),
          ],
        ),
        const Gap(4),
        Container(
          height: 49,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    inputFormatters: const [],
                    style: GoogleFonts.urbanist(
                        fontSize: 16, fontWeight: FontWeight.normal),
                    decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)),
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)),
                      suffixIcon: kalendar
                          ? Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: SvgPicture.asset(
                                "asset/calendar.png",
                              ),
                            )
                          : null,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
