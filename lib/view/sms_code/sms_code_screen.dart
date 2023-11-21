import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:premium_shop/controller/global_variable.dart';
import 'package:premium_shop/view/auth/auth_screen.dart';

class SmsCodeScreen extends StatelessWidget {
  const SmsCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 17),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "asset/Arrow - Left.png",
                  height: 28,
                ),
                const Gap(20),
                Text(
                  "Kodni tasdiqlash",
                  style: GoogleFonts.urbanist(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: textColor),
                )
              ],
            ),
            const Gap(183),
            Text(
              "Sms kodni kiriting",
              style: GoogleFonts.urbanist(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: textColor),
            ),
            const Gap(31),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: PinCodeTextField(
                appContext: context,
                length: 6,
                obscureText: true,
                obscuringWidget: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF404E67),
                  ),
                ),
                keyboardType: TextInputType.phone,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  inactiveColor: const Color(0xFFF27A1A),
                  selectedColor: const Color(0xFFF27A1A),
                  borderWidth: 1,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                ),
              ),
            ),
            const Spacer(),
            const Gap(16),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AuthScreen(),
                  )),
              child: Container(
                height: 48,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "Tasdiqlash",
                  style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w500,
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
