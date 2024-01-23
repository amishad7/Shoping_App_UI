import 'package:animation_views/app/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double size = 200;

    return Scaffold(
      floatingActionButton: Container(
        width: size - 60,
        height: size - 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.teal.shade900,
          boxShadow: const [
            // BoxShadow(color: Colors.black, blurRadius: 20,),
          ],
        ),
        child:
            Icon(CupertinoIcons.bag_badge_plus, color: Colors.white, size: 56),
      ),
      body: ListView.builder(
        itemCount: Data.images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Center(
            child: Container(
              alignment: Alignment.topCenter,
              height: size + 394,
              width: size + 100,
              padding: const EdgeInsets.only(top: 40),
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: const Color(0XFF498185),
                borderRadius: BorderRadius.circular(150),
              ),
              child: Stack(
                children: [
                  Transform.translate(
                    offset: const Offset(40, 3),
                    child: Hero(
                      tag: 'img',
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            '/sub',
                            arguments: index,
                          );
                        },
                        child: Container(
                          height: size + 25,
                          width: size + 25,
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: const Color(0XFF6aa394),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.4),
                                blurRadius: 50,
                                offset: const Offset(0, 18),
                              ),
                            ],
                            image: DecorationImage(
                              scale: 4,
                              image: NetworkImage(Data.images[index]),
                            ),
                            // border: Border.all(color: Colors.white, width: 2),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-50, 280),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: size - 194,
                          height: size - 194,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black, blurRadius: 20),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: size - 194,
                          height: size - 194,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black, blurRadius: 20),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: size - 194,
                          height: size - 194,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black, blurRadius: 20),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: size - 194,
                          height: size - 194,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black, blurRadius: 20),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: size - 194,
                          height: size - 194,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black, blurRadius: 20),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0, 340),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 45.0),
                      child: Text(
                        Data.app[index],
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          wordSpacing: 1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
