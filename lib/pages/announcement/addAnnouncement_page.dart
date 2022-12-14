import 'dart:async';

import 'package:flutter/material.dart';
import 'package:radio_volare/resources/custom_MultiLineTextField.dart';
import 'package:radio_volare/resources/custom_actionButton.dart';
import 'package:radio_volare/resources/custom_inputTextField.dart';
import '../../resources/constant.dart';
import '../../resources/custom_headerContent.dart';
import '../../resources/custom_headerStyle.dart';
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
    super.initState();
    if (mounted) {
      _timeString = _formatDateTime(DateTime.now());
      Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
    }
  }

  void _getTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = _formatDateTime(now);
    if (mounted) {
      setState(() {
        _timeString = formattedDateTime;
      });
    }
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
                  const Text("Perihal"),
                  CustomInputTextField(
                    controller: _textController,
                    hintText: "Masukkan Perihal",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    child: const Text("Tanggal"),
                  ),
                  Container(
                      width: double.infinity,
                      height: 48,
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
                              color: Color(0xFF1246AD),
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
                    child: CustomMultiLineTextField(
                      controller: _descriptionController,
                      hintText: "Masukkan Deskripsi",
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CustomActionButton(
                    textStyle: textStyleWithoutBold,
                    onTap: () {},
                    text: "SIMPAN",
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
