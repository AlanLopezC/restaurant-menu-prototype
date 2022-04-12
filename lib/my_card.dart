import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 180,
      height: 120,
      decoration: BoxDecoration(
        color: const Color.fromARGB(0, 255, 255, 255),
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1f000000),
            blurRadius: 5,
            offset: Offset(2, 2),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Stack(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                "assets/images/baggel.jpg",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: double.infinity,
              height: 20,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(16),
                ),
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    Color(0xffedefe8),
                    Color(0x99edefe8),
                    Color(0x00edefe8),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(-8, 0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: double.infinity,
                height: 18,
                child: Text(
                  "Waffles / Pancakes",
                  textAlign: TextAlign.right,
                  style: GoogleFonts.poppins(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
