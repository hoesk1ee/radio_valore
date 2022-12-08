import 'package:flutter/material.dart';
import 'package:radio_volare/pages/broadcast/schedule/addBcSchedule_page.dart';
import 'package:radio_volare/pages/broadcast/schedule/showBcSchedule_page.dart';
import 'package:radio_volare/resources/constant.dart';
import 'package:radio_volare/resources/custom_cardContent.dart';
import 'package:radio_volare/resources/custom_dropDownButton.dart';
import 'package:radio_volare/resources/custom_floatingButton.dart';
import 'package:radio_volare/resources/custom_headerContent.dart';
import 'package:radio_volare/resources/custom_headerStyle.dart';
import 'package:radio_volare/resources/custom_hyperlinkText.dart';

class BroadcastSchedule extends StatefulWidget {
  const BroadcastSchedule({Key? key}) : super(key: key);

  @override
  State<BroadcastSchedule> createState() => _BroadcastScheduleState();
}

class _BroadcastScheduleState extends State<BroadcastSchedule> {
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
                      const Text("Hari"),
                      //Dropdown List
                      CustomDropDownButton(
                        hintText: Text("- Pilih Hari -"),
                        value: dayValue,
                        items: dayList,
                        onChanged: (dynamic newValue) {
                          setState(
                            () {
                              dayValue = newValue!;
                            },
                          );
                        },
                      ),
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
                                      "Mengingatkan  aku aku aku aku aku kembali kepada semua petugas, bahwa hujan deras sekali kawan :). Jangan lupa beli kopi untuk hari esok.",
                                      style: textFieldFontSize,
                                      maxLines: 3,
                                      textAlign: TextAlign.justify,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Spacer(),
                                    CustomHyperlinkText(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ShowBroadcastSchedule(),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              height: 185,
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
      floatingActionButton: CustomFloatingButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AddBroadcastSchedulePage()));
        },
      ),
    );
  }
}
