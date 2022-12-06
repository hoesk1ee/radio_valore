import 'package:flutter/material.dart';
import 'package:radio_volare/pages/bcSchedule_page.dart';
import 'package:radio_volare/resources/constant.dart';
import 'package:radio_volare/resources/custom_broadcastButton.dart';
import 'package:radio_volare/resources/custom_headerContent.dart';

import '../resources/custom_headerStyle.dart';
import 'bcScript_page.dart';

class BroadcastPage extends StatefulWidget {
  const BroadcastPage({Key? key}) : super(key: key);

  @override
  State<BroadcastPage> createState() => _BroadcastPageState();
}

class _BroadcastPageState extends State<BroadcastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CustomHeaderStyle(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18, bottom: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomHeaderContent(label: "Siaran"),
                  bottomLine,
                  CustomBroadcastButton(
                    icon: Icons.broadcast_on_home_outlined,
                    text: "Naskah Siaran",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BroadcastScript()));
                    },
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  CustomBroadcastButton(
                    icon: Icons.schedule,
                    text: "Jadwal Siaran",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BroadcastSchedule()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
