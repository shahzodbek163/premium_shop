import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';
import 'package:mu_radio_group/mu_radio_group.dart';
import 'package:premium_shop/view/auth/widget/textfield_req.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBF1F4),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_back,
                        size: 24,
                      ),
                      Text(
                        "Ma’lumotlarni kiriting",
                        style: GoogleFonts.urbanist(
                          color: const Color(0xFF404E67),
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 26),
                    child: Container(
                      width: 140,
                      height: 140,
                      alignment: Alignment.bottomCenter,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            "asset/person.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const TextFieldReq(
                    hintext: "Ismingiz",
                    onReq: true,
                    kalendar: false,
                  ),
                  const Gap(12),
                  const TextFieldReq(
                    hintext: "Familiyangiz",
                    onReq: true,
                    kalendar: false,
                  ),
                  const Gap(12),
                  const TextFieldReq(
                    hintext: "Tug’ilgan sanangiz",
                    onReq: true,
                    kalendar: true,
                  ),
                  const Gap(12),
                  const TextFieldReq(
                    hintext: "Telefon raqami",
                    onReq: true,
                    kalendar: false,
                  ),
                  const Gap(12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Jins",
                            style: GoogleFonts.urbanist(
                              color: const Color(0xFF9E9E9E),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "*",
                            style: GoogleFonts.urbanist(
                              color: const Color(0xFFF27A1A),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Gap(6),
                      MURadioGroup(
                        elements: const ["Erkak", "Ayol"],
                        duration: const Duration(milliseconds: 400),
                        onChanged: (index) {},
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 16, right: 16),
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xFFF27A1A),
          ),
          child: Text(
            "Ro’yxatdan o’tish",
            style: GoogleFonts.urbanist(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
