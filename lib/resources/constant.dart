import 'package:flutter/material.dart';

const textStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18);

const bottomLine = Padding(
  padding: EdgeInsets.only(bottom: 24),
  child: Divider(
    color: Colors.white,
    thickness: 1,
  ),
);

const textFieldFontSize = TextStyle(fontSize: 12);

const saveButtonColor = Color(0xFF1246AD);

const textStyleWithoutBold = TextStyle(color: Colors.white, fontSize: 16);

const cancelButtonColor = Color(0xffD1D3D9);

const bodyPadding = EdgeInsets.only(left: 18.0, right: 18, bottom: 18);

const backActionButtonTextStyle = TextStyle(color: Colors.black, fontSize: 16);

const contentHeaderTextStyle =
    TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16);

const contentTimeTextStyle = TextStyle(color: Colors.grey, fontSize: 12);

const hyperlinkTextStyle = TextStyle(
  color: Colors.blue,
  decoration: TextDecoration.underline,
);

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

List<DropdownMenuItem<String>> get programList {
  List<DropdownMenuItem<String>> programItems = [
    DropdownMenuItem(value: "BBCTopOfthePops", child: Text("BBCTopOfthePops")),
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

List<DropdownMenuItem<String>> get timeList {
  List<DropdownMenuItem<String>> timeItems = [
    DropdownMenuItem(value: "06:30", child: Text("06:30")),
    DropdownMenuItem(value: "07:00", child: Text("07:00")),
    DropdownMenuItem(value: "08:30", child: Text("08:30")),
    DropdownMenuItem(value: "09:00", child: Text("09:00")),
    DropdownMenuItem(value: "10:00", child: Text("10:00")),
    DropdownMenuItem(value: "12:00", child: Text("12:00")),
    DropdownMenuItem(value: "14:00", child: Text("14:00")),
    DropdownMenuItem(value: "15:00", child: Text("15:00")),
    DropdownMenuItem(value: "16:00", child: Text("16:00")),
    DropdownMenuItem(value: "17:00", child: Text("17:00")),
  ];
  return timeItems;
}
