import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://chaleejourney.com/wp-content/uploads/2023/07/DSCF3177-1024x683.jpg'),
                  fit: BoxFit.cover)),
          child: Container(
            margin: const EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shirakawa - Go Village',
                  style: GoogleFonts.grandstander(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'Gokayama, Japan',
                  style: GoogleFonts.grandstander(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
                Container(
                  width: double.maxFinite,
                  margin: const EdgeInsets.only(top: 580),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '6401861',
                          style: GoogleFonts.grandstander(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 255, 255, 255)),
                        ),
                        Text(
                          'Suchanart Khumbungkhla',
                          style: GoogleFonts.grandstander(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ]),
                )
              ],
            ),
          )),
    );
  }
}
