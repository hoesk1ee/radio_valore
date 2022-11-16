import 'package:flutter/material.dart';
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

  // void updateUI() {
  //   setState(() {
  //     var timeHour = now.hour;
  //     var timeMinute = now.minute;
  //     var timeSecond = now.second;
  //   });
  // }

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
                          contentPadding: EdgeInsets.only(bottom: 4),
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
                  const SizedBox(height: 18),
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
                              "${date.day} $monthName ${date.year}",
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
                  const SizedBox(height: 18),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    child: const Text("Deskripsi"),
                  ),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEAEAEA),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 18.0, right: 18, top: 6),
                      child: TextField(
                        maxLines: 10,
                        style: textFieldFontSize,
                        controller: _descriptionController,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 4),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
