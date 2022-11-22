import 'dart:async';

import 'package:flutter/material.dart';
import 'package:radio_volare/resources/custom_actionButton.dart';
import '../resources/constant.dart';
import '../resources/custom_headerContent.dart';
import '../resources/custom_headerStyle.dart';
import 'package:intl/intl.dart';

class AddAnnouncementPage extends StatefulWidget {
  const AddAnnouncementPage({Key? key}) : super(key: key);

  @override
  State<AddAnnouncementPage> createState() => _AddAnnouncementPageState();
}

class _AddAnnouncementPageState extends State<AddAnnouncementPage> {
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  static DateTime now = DateTime.now();
  static DateTime date = DateTime(now.year, now.month, now.day);
  final dayName = DateFormat('EEEE').format(date);
  final monthName = DateFormat('MMMM').format(date);
  String _timeString = "00";

  @override
  void initState() {
    _timeString = _formatDateTime(DateTime.now());
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
    super.initState();
  }

  void _getTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = _formatDateTime(now);
    setState(() {
      _timeString = formattedDateTime;
    });
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('hh:mm:ss').format(dateTime);
  }

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
                  const CustomHeaderContent(label: "Buat Pengumuman"),
                  bottomLine,
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    child: const Text("Perihal"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFFEAEAEA),
                        borderRadius: BorderRadius.circular(18)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: TextField(
                        style: textFieldFontSize,
                        controller: _textController,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          border: InputBorder.none,
                          hintText: "Masukkan Perihal",
                          hintStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    child: const Text("Tanggal"),
                  ),
                  Container(
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEAEAEA),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: Text(
                              "${date.day} $monthName ${date.year} - $_timeString",
                              style: textFieldFontSize,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            icon: const Icon(
                              Icons.date_range_outlined,
                              color: Colors.black,
                            ),
                            onPressed: () async {
                              DateTime? newDate = await showDatePicker(
                                context: context,
                                initialDate: date,
                                firstDate: DateTime(2022),
                                lastDate: DateTime(2050),
                              );

                              if (newDate == null) return;

                              setState(() {
                                date = newDate;
                              });
                            },
                          ),
                        ],
                      )),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    child: const Text("Deskripsi"),
                  ),
                  Expanded(
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEAEAEA),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, right: 18, top: 12, bottom: 12),
                        child: TextField(
                          maxLines: 10,
                          style: textFieldFontSize,
                          controller: _descriptionController,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            border: InputBorder.none,
                            hintText: "Masukkan Deskripsi",
                            hintStyle: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CustomActionButton(
                    onTap: () {},
                    text: "Simpan",
                    buttonColor: saveButtonColor,
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
