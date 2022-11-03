import 'package:flutter/material.dart';

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
          CustomHeaderStyle(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Column(
                    children: [
                      CustomHeaderContent(label: "Pengumuman"),
                      bottomLine,
                      Container(
                        height: MediaQuery.of(context).size.height,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 18),
                                width: double.infinity,
                                height: 185,
                                decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 12,
                                        offset: Offset(2, 4),
                                      ),
                                    ],
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(18),
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                            decoration: TextDecoration.underline,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 18),
                                width: double.infinity,
                                height: 185,
                                decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 12,
                                        offset: Offset(2, 4),
                                      ),
                                    ],
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(18),
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                            decoration: TextDecoration.underline,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 18),
                                width: double.infinity,
                                height: 185,
                                decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 12,
                                        offset: Offset(2, 4),
                                      ),
                                    ],
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(18),
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                            decoration: TextDecoration.underline,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 18),
                                width: double.infinity,
                                height: 185,
                                decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 12,
                                        offset: Offset(2, 4),
                                      ),
                                    ],
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(18),
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                            decoration: TextDecoration.underline,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 18),
                                width: double.infinity,
                                height: 185,
                                decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 12,
                                        offset: Offset(2, 4),
                                      ),
                                    ],
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(18),
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                            decoration: TextDecoration.underline,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
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
        backgroundColor: Color(0xFF1246AD),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddAnnouncementPage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}