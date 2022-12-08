import 'package:flutter/material.dart';
import 'package:radio_volare/resources/custom_cardContent.dart';
import 'package:radio_volare/resources/custom_headerContent.dart';
import 'package:radio_volare/resources/custom_headerStyle.dart';

import '../../../resources/constant.dart';

class ShowBroadcastSchedule extends StatefulWidget {
  const ShowBroadcastSchedule({Key? key}) : super(key: key);

  @override
  State<ShowBroadcastSchedule> createState() => _ShowBroadcastScheduleState();
}

class _ShowBroadcastScheduleState extends State<ShowBroadcastSchedule> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: const [
                      CustomHeaderContent(label: "Jadwal Siaran"),
                      bottomLine,
                    ],
                  ),
                  //Content to Show Selected Broadcast Schedule
                  Expanded(
                    child: CardContent(
                        content: Padding(
                          padding: const EdgeInsets.all(18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Program : BBCTopOfThePops",
                                    style: contentHeaderTextStyle,
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Icon(Icons.delete),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 12.0),
                                child: Row(
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
                                      style: TextStyle(fontSize: 11),
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
                                      style: TextStyle(fontSize: 11),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 6),
                                child: Row(
                                  children: [
                                    Text(
                                      "Hari : Minggu",
                                      style: contentHeaderTextStyle,
                                    ),
                                    Spacer(),
                                    Text(
                                      "Jam : 09:00",
                                      style: contentHeaderTextStyle,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
                                    "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                                    "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        height: MediaQuery.of(context).size.height),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
