import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:premium_shop/controller/global_variable.dart';
import 'package:premium_shop/controller/my_behavior.dart';
import 'package:premium_shop/view/home/widget/bottom_bar_widget.dart';
import 'package:premium_shop/view/home/widget/card_widget.dart';
import 'package:premium_shop/view/home/widget/circle_container_widget.dart';
import 'package:premium_shop/view/home/widget/row_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:premium_shop/view/product/product_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      bottomNavigationBar: const BottomBar(),
      body: SafeArea(
          child: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Premium ",
                          style: GoogleFonts.urbanist(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: textColor),
                        ),
                        Text(
                          "Shop",
                          style: GoogleFonts.urbanist(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: mainColor),
                        ),
                      ],
                    ),
                    Stack(children: [
                      SvgPicture.asset("asset/Search.svg"),
                    ])
                  ],
                ),
                const Gap(16),
                Image.asset("asset/Rectangle 22324.png"),
                const Gap(16),
                RowWidget(text: "Kategoriyalar"),
                const Gap(14),
                SizedBox(
                  height: 65,
                  child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => const Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: CircleContainerWidget(),
                    ),
                  ),
                ),
                const Gap(16),
                RowWidget(text: "Top maxsulotlar"),
                const Gap(7),
                SizedBox(
                  height: 234,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ProductScreen(),
                                ));
                          },
                          child: const CardWidget()),
                    ),
                  ),
                ),
                const Gap(15),
                RowWidget(text: "Barcha mahsulotlar", isIcon: false),
                const Gap(9),
                StaggeredGrid.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 9,
                  mainAxisSpacing: 12,
                  children: List.generate(10, (index) => const CardWidget()),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
