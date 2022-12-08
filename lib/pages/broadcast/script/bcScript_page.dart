import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:radio_volare/resources/constant.dart';
import 'package:radio_volare/resources/custom_actionButton.dart';
import 'package:radio_volare/resources/custom_headerContent.dart';
import 'package:radio_volare/resources/custom_headerStyle.dart';
import 'package:radio_volare/resources/custom_inputTextField.dart';

class BroadcastScript extends StatefulWidget {
  const BroadcastScript({Key? key}) : super(key: key);

  @override
  State<BroadcastScript> createState() => _BroadcastScriptState();
}

class _BroadcastScriptState extends State<BroadcastScript> {
  final TextEditingController _nameController = TextEditingController();
  static DateTime now = DateTime.now();
  static DateTime date = DateTime(now.year, now.month, now.day);
  final monthName = DateFormat('MMMM').format(date);

  DateTimeRange dateRange = DateTimeRange(
    start: DateTime(now.year, now.month, now.day),
    end: DateTime(now.year, now.month, now.day),
  );

  @override
  Widget build(BuildContext context) {
    final start = dateRange.start;
    final end = dateRange.end;
    final monthRangeStartName = DateFormat('MMMM').format(start);
    final monthRangeEndName = DateFormat('MMMM').format(end);

    //Date Range Picker
    Future pickDateRange() async {
      DateTimeRange? newDateRange = await showDateRangePicker(
        context: context,
        firstDate: DateTime(2020),
        lastDate: DateTime(2050),
        initialDateRange: dateRange,
      );

      if (newDateRange == null) return; //cancel

      setState(() {
        dateRange = newDateRange;
      });
    }

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
                  CustomHeaderContent(label: "Naskah Siaran"),
                  bottomLine,
                  //Content
                  Text("Oleh"),
                  CustomInputTextField(
                    controller: _nameController,
                    hintText: "Masukkan Nama",
                  ),
                  Text("Tanggal"),
                  //Date Range Picker
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 6),
                          height: 48,
                          decoration: BoxDecoration(
                            color: const Color(0xFFEAEAEA),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Center(
                            child: Text(
                              "${start.day} $monthRangeStartName ${start.year}",
                              style: TextStyle(fontSize: 11),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 6, right: 6, top: 6),
                        child: Text(" - "),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 6),
                          height: 48,
                          decoration: BoxDecoration(
                            color: const Color(0xFFEAEAEA),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Center(
                            child: Text(
                              "${end.day} $monthRangeEndName ${end.year}",
                              style: TextStyle(fontSize: 11),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: GestureDetector(
                          onTap: pickDateRange,
                          child: Icon(
                            Icons.date_range_outlined,
                            color: Color(0xFF1246AD),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                    child: CustomActionButton(
                        onTap: () {},
                        text: "CARI",
                        buttonColor: Color(0xFF1246AD),
                        textStyle: textStyleWithoutBold),
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
