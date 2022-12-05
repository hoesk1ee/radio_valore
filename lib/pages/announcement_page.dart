import 'package:flutter/material.dart';
import 'package:radio_volare/pages/showAnnouncement_page.dart';
import 'package:radio_volare/resources/custom_cardContent.dart';
import 'package:radio_volare/resources/custom_floatingButton.dart';

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
                    children: const [
                      CustomHeaderContent(label: "Pengumuman"),
                      bottomLine,
                    ],
                  ),
                  Expanded(
                    child: Scrollbar(
                      thickness: 5,
                      radius: Radius.circular(18),
                      thumbVisibility: true,
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return CardContent(
                            content: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Perihal : Waktu Absensi",
                                    style: contentHeaderTextStyle,
                                  ),
                                  Text(
                                    "26 Oktober 2022 - 09:59",
                                    style: contentTimeTextStyle,
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "Mengingatkan kembali kepada semua petugas, bahwa dalam perhitungan absensi, akan diperhitungkan Mengingatkan kembali kepada semua petugas, bahwa dalam perhitungan absensi, akan diperhitungkan ",
                                    textAlign: TextAlign.justify,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Spacer(),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ShowAnnouncement(),
                                          ),
                                        );
                                      },
                                      child: Text("Selengkapnya »",
                                          style: hyperlinkTextStyle),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            height: 185,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: CustomFloatingButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AddAnnouncementPage()));
        },
      ),
    );
  }
}
