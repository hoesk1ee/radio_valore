import 'package:flutter/material.dart';
import 'package:radio_volare/resources/constant.dart';
import 'package:radio_volare/resources/custom_headerContent.dart';
import 'package:radio_volare/resources/custom_headerStyle.dart';

class AddBroadcastSchedulePage extends StatefulWidget {
  const AddBroadcastSchedulePage({Key? key}) : super(key: key);

  @override
  State<AddBroadcastSchedulePage> createState() =>
      _AddBroadcastSchedulePageState();
}

class _AddBroadcastSchedulePageState extends State<AddBroadcastSchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CustomHeaderStyle(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, bottom: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomHeaderContent(label: "Buat Jadwal Siaran"),
                  bottomLine,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
