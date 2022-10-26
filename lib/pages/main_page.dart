import 'package:flutter/material.dart';
import 'package:radio_volare/resources/custom_menuButton.dart';

import '../resources/constant.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(18),
              bottomLeft: Radius.circular(18),
            ),
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/background.png",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          SafeArea(
            child: Container(
              margin: EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.supervised_user_circle_outlined,
                        color: Colors.white,
                        size: 72,
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text(
                        "Hai, Leonardo",
                        style: textStyle,
                      )
                    ],
                  ),
                  //Divider with Bottom Padding
                  Divider(
                    thickness: 1,
                    color: Colors.white,
                  ),
                  const Text(
                    "Pengumuman Terbaru",
                    style: textStyle,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  //Announcement Card
                  Container(
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
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            "Rabu, 26 Oktober 2022 | 9:59 PM",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
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
                  SizedBox(
                    height: 18,
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisSpacing: 18,
                      mainAxisSpacing: 18,
                      crossAxisCount: 2,
                      childAspectRatio: 1.25,
                      children: [
                        CustomMenuButton(
                          icons: Icons.chat_outlined,
                          text: "Pengumuman",
                          onTap: () {},
                        ),
                        CustomMenuButton(
                          icons: Icons.cell_tower_outlined,
                          text: "Siaran",
                          onTap: () {},
                        ),
                        CustomMenuButton(
                          icons: Icons.calendar_today_outlined,
                          text: "Topik",
                          onTap: () {},
                        ),
                        CustomMenuButton(
                          icons: Icons.my_library_music_outlined,
                          text: "ROTW",
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Color(0xFF1246AD),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Beranda",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_outlined),
              label: "Absensi",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Profil",
            ),
          ],
        ),
      ),
    );
  }
}