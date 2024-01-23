import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/constant.dart';

class Sub extends StatefulWidget {
  const Sub({super.key});

  @override
  State<Sub> createState() => _SubState();
}

class _SubState extends State<Sub> {
  @override
  Widget build(BuildContext context) {
    double size = 200;

    int index = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Hero(
              tag: 'img',
              flightShuttleBuilder: (ctx, _, __, ___, ____) =>
                  CircularProgressIndicator(),
              child: Container(
                margin: EdgeInsets.only(top: 100),
                alignment: Alignment.center,
                height: size + 135,
                width: size + 135,
                decoration: BoxDecoration(
                  color: const Color(0XFF6aa394).withOpacity(0.1),
                  shape: BoxShape.circle,
                  // border: Border.all(color: Colors.white, width: 2),
                ),
                child: Container(
                  height: size + 55,
                  width: size + 55,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0XFF6aa394).withOpacity(0.2),
                    shape: BoxShape.circle,

                    image: DecorationImage(
                      scale: 3,
                      image: NetworkImage(Data.images[index]),
                    ),
                    // border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(0, 500),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45.0),
              child: Text(
                Data.app[index],
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 20,
                  wordSpacing: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
