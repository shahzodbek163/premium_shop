import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HowMany extends StatefulWidget {
  const HowMany({super.key});

  @override
  State<HowMany> createState() => _HowManyState();
}

class _HowManyState extends State<HowMany> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            --index;
            setState(() {});
          },
          child: Container(
            width: 46,
            height: 20,
            alignment: Alignment.center,
            color: Colors.white,
            child: const Text(
              "-",
              style: TextStyle(
                color: Color(0xFF404E67),
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
        ),
        const Gap(16),
        Text(
          "$index",
          style: const TextStyle(
            color: Color(0xFF404E67),
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
        const Gap(16),
        GestureDetector(
          onTap: () {
            ++index;
            setState(() {});
          },
          child: Container(
            width: 46,
            height: 20,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xFFF27A1A),
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Text(
              "+",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
