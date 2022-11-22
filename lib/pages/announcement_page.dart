import 'package:flutter/material.dart';
import 'package:radio_volare/resources/custom_cardContent.dart';

import '../resources/constant.dart';
import '../resources/custom_headerContent.dart';
import '../resources/custom_headerStyle.dart';
import 'addAnnouncement_page.dart';

class AnnouncementPage extends StatefulWidget {
  const AnnouncementPage({Key? key}) : super(key: key);

  @override
  State<AnnouncementPage> createState() => _AnnouncementPageState();
}

class _AnnouncementPageState extends State<AnnouncementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CustomHeaderStyle(),
          SafeArea(
            child: Padding(
              padding: bodyPadding,
              child: Column(
                children: [
                  Column(
                    children: [
                      const CustomHeaderContent(label: "Pengumuman"),
                      bottomLine,
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              CardContent(
                                  content: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Perihal : Waktu Absensi",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          "Rabu, 26 Oktober 2022 | 9:59 PM",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                            "Mengingatkan kembali kepada semua petugas, bahwa dalam perhitungan absensi, akan diperhitungkan..."),
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Text(
                                              "Selengkapnya »",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  height: 185),
                              CardContent(
                                  content: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Perihal : Waktu Absensi",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          "Rabu, 26 Oktober 2022 | 9:59 PM",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                            "Mengingatkan kembali kepada semua petugas, bahwa dalam perhitungan absensi, akan diperhitungkan..."),
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Text(
                                              "Selengkapnya »",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  height: 185),
                              CardContent(
                                  content: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Perihal : Waktu Absensi",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          "Rabu, 26 Oktober 2022 | 9:59 PM",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                            "Mengingatkan kembali kepada semua petugas, bahwa dalam perhitungan absensi, akan diperhitungkan..."),
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Text(
                                              "Selengkapnya »",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  height: 185),
                              CardContent(
                                  content: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Perihal : Waktu Absensi",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          "Rabu, 26 Oktober 2022 | 9:59 PM",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                            "Mengingatkan kembali kepada semua petugas, bahwa dalam perhitungan absensi, akan diperhitungkan..."),
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Text(
                                              "Selengkapnya »",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  height: 185),
                              CardContent(
                                  content: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Perihal : Waktu Absensi",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          "Rabu, 26 Oktober 2022 | 9:59 PM",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                            "Mengingatkan kembali kepada semua petugas, bahwa dalam perhitungan absensi, akan diperhitungkan..."),
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Text(
                                              "Selengkapnya »",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  height: 185),
                              CardContent(
                                  content: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Perihal : Waktu Absensi",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          "Rabu, 26 Oktober 2022 | 9:59 PM",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                            "Mengingatkan kembali kepada semua petugas, bahwa dalam perhitungan absensi, akan diperhitungkan..."),
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            "Selengkapnya »",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  height: 185),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF1246AD),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AddAnnouncementPage()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
