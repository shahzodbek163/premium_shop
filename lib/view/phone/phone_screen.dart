import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:premium_shop/controller/global_variable.dart';
import 'package:premium_shop/view/sms_code/sms_code_screen.dart';

class PhoneScreen extends StatelessWidget {
  PhoneScreen({super.key});

  var maskFr = MaskTextInputFormatter(
      mask: "(##) ###-##-##",
      filter: {"#": RegExp(r"[0-9]")},
      type: MaskAutoCompletionType.lazy);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBF1F4),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 151),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 115),
              child: Image.asset("asset/Premium__2_-removebg-preview 1.png"),
            ),
            const Gap(87),
            Text(
              "Ro’yxatdan o’tish",
              style: GoogleFonts.urbanist(
                  fontWeight: FontWeight.bold, fontSize: 24, color: textColor),
            ),
            const Gap(30),
            Container(
              height: 49,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  const Gap(15),
                  Text(
                    "+998",
                    style: GoogleFonts.urbanist(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFF9E9E9E)),
                  ),
                  const Gap(10),
                  SizedBox(
                    width: 110,
                    child: TextField(
                      inputFormatters: [maskFr],
                      keyboardType: TextInputType.phone,
                      style: GoogleFonts.urbanist(
                          fontSize: 16, fontWeight: FontWeight.normal),
                      cursorColor: mainColor,
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(16),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SmsCodeScreen(),
                  )),
              child: Container(
                height: 48,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "Ro’yxatdan o’tish",
                  style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
