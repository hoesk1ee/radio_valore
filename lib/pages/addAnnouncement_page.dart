import 'package:flutter/material.dart';
import '../resources/constant.dart';
import '../resources/custom_headerContent.dart';
import '../resources/custom_headerStyle.dart';

class AddAnnouncementPage extends StatefulWidget {
  const AddAnnouncementPage({Key? key}) : super(key: key);

  @override
  State<AddAnnouncementPage> createState() => _AddAnnouncementPageState();
}

class _AddAnnouncementPageState extends State<AddAnnouncementPage> {
  final TextEditingController _textController = TextEditingController();
  DateTime dateNow = DateTime.now();

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
                children:[
                  CustomHeaderContent(label: "Buat Pengumuman"),
                  bottomLine,
                  Text("Perihal"),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFEAEAEA),
                      borderRadius: BorderRadius.circular(18)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: TextField(
                        controller: _textController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 5),
                          border: InputBorder.none,
                          hintText: "Masukkan Perihal",
                          hintStyle: TextStyle(fontSize: 10, color: Colors.grey,),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 18),
                  Text("Tanggal"),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFEAEAEA),
                        borderRadius: BorderRadius.circular(18)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: IconButton(icon: Icon(Icons.date_range_outlined), onPressed: (){},),
                          border: InputBorder.none,
                          hintText: "Masukkan Perihal",
                          hintStyle: TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      ),
                    ),
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
