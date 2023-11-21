import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:premium_shop/view/product_collection/widget/consile.dart';

class ProductCollectionScreen extends StatelessWidget {
  const ProductCollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 16, top: 21),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.arrow_back,
                    size: 24,
                  ),
                  const Gap(18),
                  Text(
                    "Maxsulotlar",
                    style: GoogleFonts.urbanist(
                      color: const Color(0xFF404E67),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, right: 9),
                    child: Conste(),
                  ),
                ],
              ),
              const Gap(2),
              Container(
                height: 49,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 4),
                        child: Image.asset("asset/Search.png"),
                      ),
                      Expanded(
                        child: TextField(
                          inputFormatters: const [],
                          style: GoogleFonts.urbanist(
                              fontSize: 16, fontWeight: FontWeight.normal),
                          decoration: InputDecoration(
                            hintText: "Maxsulot bo’yicha qidirish",
                            hintStyle: GoogleFonts.inter(
                              fontSize: 12,
                              color: const Color(0xFFCACEDC),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Image.asset("asset/moreCircle.png"),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(10),
              Row(
                children: [
                  Text(
                    "Qidiruv bo’yicha",
                    style: GoogleFonts.urbanist(
                      color: const Color(0xFF404E67),
                      fontSize: 12,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "138",
                    style: GoogleFonts.urbanist(
                      color: const Color(0xFFF27A1A),
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    " ta natija",
                    style: GoogleFonts.urbanist(
                      color: const Color(0xFF404E67),
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
