import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:premium_shop/controller/global_variable.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 234,
      width: 176,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 4,
                color: const Color(0xFF505050).withOpacity(.04),
                offset: const Offset(0, 4))
          ]),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                  "asset/CP_Male_Native_961fa23a-161f-4a6d-ad4d-fc4ca0ddec96_970x 1.png"),
              Positioned(
                top: 9,
                left: 8,
                child: Container(
                  height: 14,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2)),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "asset/truck-speed-svgrepo-com.svg",
                        color: textColor,
                      ),
                      Text(
                        "Bepul yetkazish",
                        style: GoogleFonts.urbanist(
                            fontSize: 8,
                            color: textColor,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0,
                child: Container(
                  height: 18,
                  width: 37,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5))),
                  child: Text(
                    "TOP",
                    style: GoogleFonts.urbanist(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 14,
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  decoration: const BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
                  child: Text(
                    "2 chi maxsulotdan 30 ming chegirma",
                    style: GoogleFonts.urbanist(
                        fontSize: 10.3,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          ),
          const Gap(4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nordgreen",
                      style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w600, fontSize: 8),
                    ),
                    Text(
                      "199 000 so’m",
                      style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w600, fontSize: 8),
                    )
                  ],
                ),
                const Gap(4),
                SizedBox(
                  height: 20,
                  child: Text(
                    "Erkaklar uchun maxsus ingichka disayndagi premium soat NordGreen",
                    style: GoogleFonts.urbanist(
                        fontSize: 8, fontWeight: FontWeight.normal),
                  ),
                ),
                const Gap(8),
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 75,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(2)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        child: Row(
                          children: [
                            SvgPicture.asset("asset/Buy.svg"),
                            const Gap(4),
                            Text(
                              "Savatga",
                              style: GoogleFonts.urbanist(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Gap(8),
                    Container(
                      height: 20,
                      width: 74.8,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      decoration: BoxDecoration(
                          color: mainColor.withOpacity(.28),
                          borderRadius: BorderRadius.circular(2)),
                      child: Text(
                        "Batafsil",
                        style: GoogleFonts.urbanist(
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                            color: mainColor),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
