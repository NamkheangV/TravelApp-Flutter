import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelPage extends StatelessWidget {
  const TravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Stack(
        children: [
          // Map
          Positioned(
            child: Container(
              width: double.maxFinite,
              height: 400,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.squarespace-cdn.com/content/v1/61ebfbdf13a0822b11d455eb/75ab6ce3-7f15-49b7-aa9e-a3c50666fc6c/CB7A5B1D-5EA3-4217-B6ED-D7332AF6DCD6.jpeg?format=2500w'),
                      fit: BoxFit.cover)),
            ),
          ),

          // How to Travel
          Positioned(
              top: 380,
              left: 0,
              child: Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          'How to Travel',
                          style: GoogleFonts.grandstander(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),

                    // Travel 1
                    Row(
                      children: [
                        Container(
                          height: 150,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://www.japan-guide.com/g19/740/2015_01.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 180,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Osaka',
                                  style: GoogleFonts.grandstander(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'นั่งรถไฟจากโอซาก้าหรือนาโกย่ามาลงที่เมืองคานาซาวาแล้วต่อรถบัสไปยังหมู่บ้านชิราคาวาโกะ',
                                style: GoogleFonts.grandstander(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),

                    // Travel 2
                    Row(
                      children: [
                        Container(
                          height: 150,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://www.japan-guide.com/g19/740/bus.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 180,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Nagoya',
                                  style: GoogleFonts.notoSans(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'นั่งรถไฟเข้าเมืองทาคายาม่า แล้วต่อรถบัสไปยังหมู่บ้านชิราคาวาโกะ',
                                style: GoogleFonts.notoSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    ));
  }
}
