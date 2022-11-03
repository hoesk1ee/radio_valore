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
  static DateTime now = DateTime.now();
  static DateTime date = DateTime(now.year, now.month, now.day);
  final dayName = DateFormat('EEEE').format(date);
  final monthName = DateFormat('MMMM').format(date);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomHeaderStyle(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomHeaderContent(label: "Buat Pengumuman"),
                  bottomLine,
                  Text("Perihal"),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFEAEAEA),
                        borderRadius: BorderRadius.circular(18)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: TextField(
                        style: textFieldFontSize,
                        controller: _textController,
                        decoration: InputDecoration(
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
                  SizedBox(height: 18),
                  Text("Tanggal"),
                  Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color(0xFFEAEAEA),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 18),
                          child: Text(
                            "${date.day} ${monthName} ${date.year}",
                            style: textFieldFontSize,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(
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
                    )
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

//Container(
//                     decoration: BoxDecoration(
//                         color: Color(0xFFEAEAEA),
//                         borderRadius: BorderRadius.circular(18)),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 18.0),
//                       child: TextField(
//                         decoration: InputDecoration(
//                           suffixIcon: IconButton(
//                             icon: Icon(
//                               Icons.date_range_outlined,
//                               color: Colors.black,
//                             ),
//                             onPressed: () async {
//                               DateTime? newDate = await showDatePicker(
//                                 context: context,
//                                 initialDate: date,
//                                 firstDate: DateTime(2022),
//                                 lastDate: DateTime(2050),
//                               );
//
//                               if (newDate == null) return;
//
//                               setState(() {
//                                 date = newDate;
//                               });
//                             },
//                           ),
//                           border: InputBorder.none,
//                           hintText:
//                               "$dayName, ${date.day} ${monthName} ${date.year}",
//                           hintStyle:
//                               TextStyle(fontSize: 10, color: Colors.grey),
//                         ),
//                       ),
//                     ),
//                   )