import 'package:flutter/material.dart';
import 'package:radio_volare/resources/constant.dart';
import 'package:radio_volare/resources/custom_cardContent.dart';
import 'package:radio_volare/resources/custom_headerContent.dart';
import 'package:radio_volare/resources/custom_headerStyle.dart';

class BroadcastSchedule extends StatefulWidget {
  const BroadcastSchedule({Key? key}) : super(key: key);

  @override
  State<BroadcastSchedule> createState() => _BroadcastScheduleState();
}

class _BroadcastScheduleState extends State<BroadcastSchedule> {
  // List dayList = [
  //   "Senin",
  //   "Selasa",
  //   "Rabu",
  //   "Kamis",
  //   "Jumat",
  //   "Sabtu",
  //   "Minggu"
  // ];

  List<DropdownMenuItem<String>> get dayList {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Senin"), value: "Senin"),
      DropdownMenuItem(child: Text("Selasa"), value: "Selasa"),
      DropdownMenuItem(child: Text("Rabu"), value: "Rabu"),
      DropdownMenuItem(child: Text("Kamis"), value: "Kamis"),
      DropdownMenuItem(child: Text("Jumat"), value: "Jumat"),
      DropdownMenuItem(child: Text("Sabtu"), value: "Sabtu"),
      DropdownMenuItem(child: Text("Minggu"), value: "Minggu"),
    ];
    return menuItems;
  }

  String? dayValue;

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
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomHeaderContent(label: "Jadwal Siaran"),
                      bottomLine,
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: const Text("Hari"),
                      ),
                      //Dropdown List
                      DropdownButtonHideUnderline(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFEAEAEA),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          width: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.only(left: 18.0, right: 18),
                            child: DropdownButton(
                              hint: Text("- Pilih Hari -"),
                              value: dayValue,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                              items: dayList,
                              onChanged: (String? newValue) {
                                setState(() {
                                  dayValue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      //Content
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            for (int i = 0; i < 10; i++)
                              CardContent(
                                content: Padding(
                                  padding: EdgeInsets.all(18),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text("Ruang Publik"),
                                          Spacer(),
                                          Text("09:00 - 10:00")
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.person,
                                            size: 18,
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            "Orang",
                                            style: TextStyle(fontSize: 11),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "Mengingatkan kembali kepada semua petugas, bahwa hujan deras sekali kawan :). Jangan lupa beli kopi untuk hari esok.",
                                        style: textFieldFontSize,
                                      )
                                    ],
                                  ),
                                ),
                                height: 165,
                              ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
