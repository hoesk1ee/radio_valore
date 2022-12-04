import 'package:flutter/material.dart';
import 'package:radio_volare/pages/addBcShedule_page.dart';
import 'package:radio_volare/resources/constant.dart';
import 'package:radio_volare/resources/custom_cardContent.dart';
import 'package:radio_volare/resources/custom_floatingButton.dart';
import 'package:radio_volare/resources/custom_headerContent.dart';
import 'package:radio_volare/resources/custom_headerStyle.dart';

class BroadcastSchedule extends StatefulWidget {
  const BroadcastSchedule({Key? key}) : super(key: key);

  @override
  State<BroadcastSchedule> createState() => _BroadcastScheduleState();
}

class _BroadcastScheduleState extends State<BroadcastSchedule> {
  List<DropdownMenuItem<String>> get dayList {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(value: "Senin", child: Text("Senin")),
      DropdownMenuItem(value: "Selasa", child: Text("Selasa")),
      DropdownMenuItem(value: "Rabu", child: Text("Rabu")),
      DropdownMenuItem(value: "Kamis", child: Text("Kamis")),
      DropdownMenuItem(value: "Jumat", child: Text("Jumat")),
      DropdownMenuItem(value: "Sabtu", child: Text("Sabtu")),
      DropdownMenuItem(value: "Minggu", child: Text("Minggu")),
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
                    ],
                  ),
                  Expanded(
                    child: Scrollbar(
                      thumbVisibility: true,
                      thickness: 5,
                      radius: Radius.circular(18),
                      child: ListView.builder(
                          itemCount: 8,
                          itemBuilder: (BuildContext context, int index) {
                            return CardContent(
                              content: Padding(
                                padding: EdgeInsets.all(18),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Ruang Publik",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              children: const [
                                                Icon(
                                                  Icons.person,
                                                  size: 18,
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                  "Orang",
                                                  style:
                                                      TextStyle(fontSize: 11),
                                                ),
                                                SizedBox(
                                                  width: 18,
                                                ),
                                                Icon(
                                                  Icons.person,
                                                  size: 18,
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                  "Orang",
                                                  style:
                                                      TextStyle(fontSize: 11),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          children: const [
                                            Text("09:00"),
                                            Text(
                                              "Minggu",
                                              style: TextStyle(fontSize: 11),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8,
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
                            );
                          }),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: CustomFloatingButton(onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AddBroadcastSchedulePage()));
      }),
    );
  }
}
