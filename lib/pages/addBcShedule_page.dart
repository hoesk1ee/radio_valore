import 'package:flutter/material.dart';
import 'package:radio_volare/resources/constant.dart';
import 'package:radio_volare/resources/custom_dropDownButton.dart';
import 'package:radio_volare/resources/custom_headerContent.dart';
import 'package:radio_volare/resources/custom_headerStyle.dart';

class AddBroadcastSchedulePage extends StatefulWidget {
  const AddBroadcastSchedulePage({Key? key}) : super(key: key);

  @override
  State<AddBroadcastSchedulePage> createState() =>
      _AddBroadcastSchedulePageState();
}

class _AddBroadcastSchedulePageState extends State<AddBroadcastSchedulePage> {
  String? programValue;

  List<DropdownMenuItem<String>> get programList {
    List<DropdownMenuItem<String>> programItems = [
      DropdownMenuItem(
          value: "BBCTopOfthePops", child: Text("BBCTopOfthePops")),
      DropdownMenuItem(value: "Dunia Kampus", child: Text("Dunia Kampus")),
      DropdownMenuItem(value: "RuangMusik", child: Text("RuangMusik")),
      DropdownMenuItem(value: "RuangTamu", child: Text("RuangTamu")),
      DropdownMenuItem(value: "VolareGRESS", child: Text("VolareGRESS")),
      DropdownMenuItem(value: "VolareSiang", child: Text("VolareSiang")),
      DropdownMenuItem(value: "MusikSore", child: Text("MusikSore")),
      DropdownMenuItem(value: "Vnos", child: Text("Vnos")),
      DropdownMenuItem(value: "VnosX", child: Text("VnosX")),
      DropdownMenuItem(value: "VoaThisMorning", child: Text("VoaThisMorning")),
      DropdownMenuItem(value: "VoaPlus", child: Text("VoaPlus")),
      DropdownMenuItem(value: "VoaWeekend", child: Text("VoaWeekend")),
    ];
    return programItems;
  }

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
                  CustomHeaderContent(label: "Buat Jadwal Siaran"),
                  bottomLine,
                  Text("Program"),
                  //Dropdown List
                  CustomDropDownButton(
                    hintText: Text("Nama Program"),
                    value: programValue,
                    items: programList,
                    onChanged: (dynamic newValue) {
                      setState(
                        () {
                          programValue = newValue!;
                        },
                      );
                    },
                  ),
                  //Form Content
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
