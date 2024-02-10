import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccommodationPage extends StatelessWidget {
  const AccommodationPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Hotel Data for List View
    final List _HotelList = [
      [
        'Shiroyamakan',
        'https://resources.matcha-jp.com/resize/720x2000/2023/08/04-142707.webp'
      ],
      [
        'CURIO Shirakawa-go',
        'https://resources.matcha-jp.com/resize/720x2000/2023/08/04-142715.webp'
      ],
      [
        'TOYOTA Eco-Institute',
        'https://resources.matcha-jp.com/resize/720x2000/2023/08/04-142714.webp'
      ],
      [
        'Guesthouse KEI',
        'https://resources.matcha-jp.com/resize/720x2000/2023/08/04-142712.webp'
      ],
      [
        'WAY SHIRAKAWA GO',
        'https://resources.matcha-jp.com/resize/720x2000/2023/08/04-142713.webp'
      ]
    ];

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              // Gassho Minshuku
              Container(
                height: 280,
                width: double.maxFinite,
                margin: const EdgeInsets.only(top: 15, bottom: 45),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://resources.matcha-jp.com/resize/720x2000/2023/08/04-142709.webp'),
                      fit: BoxFit.cover,
                    )),
                child: Container(
                  margin: const EdgeInsets.only(left: 20, top: 15),
                  child: Text(
                    'Gassho Minshuku',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.grandstander().fontFamily,
                    ),
                  ),
                ),
              ),

              // Recommended Hotel
              Row(
                children: [
                  Text('Recommended Hotel',
                      style: GoogleFonts.grandstander(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  const Spacer(),
                  Text('See all',
                      style: GoogleFonts.grandstander(
                          fontSize: 15, fontWeight: FontWeight.normal)),
                ],
              ), // Recommended Hotel (Row
              const SizedBox(
                height: 20,
              ),

              // Hotel List
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _HotelList.length,
                    itemBuilder: (context, index) {
                      return Container(
                          height: 100,
                          width: 200,
                          margin: const EdgeInsets.only(bottom: 15, right: 15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: NetworkImage(_HotelList[index][1]),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 15, bottom: 8),
                                child: Text(
                                  _HotelList[index][0],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily:
                                        GoogleFonts.notoSans().fontFamily,
                                    shadows: const [
                                      Shadow(
                                        blurRadius: 15.0,
                                        color:
                                            Color.fromARGB(255, 146, 146, 146),
                                        offset: Offset(3.5, 3.5),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
