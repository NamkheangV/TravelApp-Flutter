import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          // Picture
          Container(
            width: double.maxFinite,
            height: 500,
            decoration: const BoxDecoration(
                // rounded corner
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://www.ananda.co.th/blog/thegenc/wp-content/uploads/2022/07/shirakawa-go-gokayama-japan-825x550.jpg'),
                    fit: BoxFit.cover)),
          ),

          // Title
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shirakawa - go',
                      style: GoogleFonts.grandstander(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Gokayama, Japan',
                      style: GoogleFonts.grandstander(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.favorite, color: Colors.red, size: 40),
              ],
            ),
          ),

          // Description
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              "หมู่บ้าน ชิราคาวาโกะ เป็นหมู่บ้านชาวนาที่เก่าแก่แห่งหนึ่งในญี่ปุ่น ตั้งอยู่ท่ามกลางหุบเขาในเขตจังหวัดกิฟุ (Gifu) ทางตอนกลางของเกาะฮอนชู (Honshu) ประเทศญี่ปุ่น เป็นหมู่บ้านที่อุดมสมบูรณ์ไปด้วยความงดงามทางธรรมชาติ จุดสำคัญของการมาเยี่ยมชมคือการได้ดื่มด่ำกับความงดงามของหมู่บ้าน และได้เห็นรูปทรงของบ้านแต่ละหลังที่เป็นสถาปัตยกรรมแบบญี่ปุ่นดั้งเดิมเรียกว่า “กัสโชสึคุริ (Gassho-zukuri)” ",
              style: GoogleFonts.notoSansThai(
                  fontSize: 16, fontWeight: FontWeight.normal),
            ),
          ),

          // Good day to visit and Weather
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 160,
                padding: const EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.sunny_snowing, size: 40),
                    const SizedBox(height: 10),
                    Text(
                      'Winter Season',
                      style: GoogleFonts.notoSans(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'December - February',
                      style: GoogleFonts.notoSans(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              Container(
                height: 160,
                width: 160,
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.wb_cloudy, size: 40),
                    const SizedBox(height: 10),
                    Text(
                      'Weather',
                      style: GoogleFonts.notoSans(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '-10°C - 0°C',
                      style: GoogleFonts.notoSans(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          // Picture
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://resources.matcha-jp.com/resize/720x2000/2023/08/04-142710.webp'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://cms.dmpcdn.com/travel/2023/07/05/ea673160-1b02-11ee-84ec-ef5fa41af2a0_webp_original.webp'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
