import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Conste extends StatefulWidget {
  const Conste({super.key});

  @override
  State<Conste> createState() => _ConsteState();
}

class _ConsteState extends State<Conste> {
  int selectbtn = 0;
  List<String> namelist = ["Maxsulot nomi", "Maxsulot kategoriyasi"];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 104,
        height: 44,
        color: Colors.white,
        child: ListView.builder(
          itemCount: namelist.length,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          itemBuilder: (context, index) {
            return index == selectbtn
                ? Row(
                    children: [
                      Text(
                        namelist[index],
                        style: GoogleFonts.urbanist(
                          fontSize: 8,
                          color: const Color(0xFF404E67),
                        ),
                      ),
                      const Spacer(),
                      Image.asset(
                        "asset/ptic.png",
                        width: 5,
                        height: 5,
                      ),
                    ],
                  )
                : InkWell(
                    onTap: () {
                      selectbtn = index;
                      setState(() {});
                    },
                    child: Text(
                      namelist[index],
                      style: GoogleFonts.urbanist(
                        fontSize: 8,
                        color: const Color(0xFF404E67),
                      ),
                    ),
                  );
          },
        ));
  }
}
