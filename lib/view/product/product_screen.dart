import 'package:animation_widget/widget/how_many.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:premium_shop/view/product/widget/how_many.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:readmore/readmore.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final pageController = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 400,
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        "assets/watch.png",
                        height: 400,
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                      );
                    },
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Column(
                    children: [
                      SmoothPageIndicator(
                        controller: pageController,
                        count: 4,
                        effect: const ExpandingDotsEffect(
                          activeDotColor: Color(0xFFF27A1A),
                          dotHeight: 4,
                          dotWidth: 6,
                          expansionFactor: 3,
                          radius: 5,
                          dotColor: Color(0xFFFEFEFE),
                        ),
                      ),
                      const Gap(8),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 16,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Xiaomi AmazeFit 4.0",
                        style: GoogleFonts.urbanist(
                          color: const Color(0xFF404E67),
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      Image.asset(
                        "assets/favorite.png",
                        height: 24,
                        width: 24,
                      ),
                      const Gap(8),
                      Image.asset(
                        "assets/Send.png",
                        height: 24,
                        width: 24,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF05AB63),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 3, horizontal: 7),
                          child: Text(
                            "2 350 000 so’m",
                            style: GoogleFonts.urbanist(
                              color: Colors.white,
                              fontSize: 8,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const Gap(12),
                      Image.asset(
                        "assets/carbon_delivery.png",
                        width: 12,
                        height: 12,
                      ),
                      const Gap(4),
                      Text(
                        "Bepul yetkazish",
                        style: GoogleFonts.urbanist(
                          color: const Color(0xFF05AB63),
                          fontSize: 8,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const Gap(13),
                  Text(
                    "Qisqacha",
                    style: GoogleFonts.urbanist(
                      color: const Color(0xFF404E67),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Gap(4),
                  ReadMoreText(
                    "Xiaomi kompaniyasidan ajoyib smart soat AmazeFit 2.0, suvga chidamli, 3400 mAhXiaomi kompaniyasidan ajoyib smart soat AmazeFit 2.0, suvga chidamli, 3400 mAh",
                    trimLines: 2,
                    trimLength: 5,
                    style: GoogleFonts.urbanist(
                      color: const Color(0xFF404E67),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    colorClickableText: Colors.pink,
                    moreStyle:
                        const TextStyle(color: Colors.green, fontSize: 10),
                    lessStyle:
                        const TextStyle(color: Colors.green, fontSize: 10),
                    trimMode: TrimMode.Line,
                    trimCollapsedText: " ko'proq",
                    trimExpandedText: " kamroq",
                  ),
                  const Gap(13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Nechta",
                        style: GoogleFonts.urbanist(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF404E67),
                        ),
                      ),
                      const Spacer(),
                      const HowMany(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 50,
        decoration: const BoxDecoration(
          color: Color(0xFFF27A1A),
        ),
        child: Text(
          "Buyurtma berish",
          style: GoogleFonts.urbanist(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
