import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:premium_shop/controller/global_variable.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (value) {
          setState(() {
            myIndex = value;
          });
        },
        currentIndex: myIndex,
        backgroundColor: Colors.white,
        unselectedItemColor: const Color(0xFF9E9E9E),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: mainColor,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedLabelStyle: GoogleFonts.urbanist(fontWeight: FontWeight.bold),
        unselectedLabelStyle: GoogleFonts.urbanist(fontWeight: FontWeight.bold),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Kategoriyalar"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart_fill), label: "Sevimlilar"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Yangiliklar"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Profile")
        ]);
  }
}
