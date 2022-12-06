import 'package:flutter/material.dart';
import 'package:radio_volare/resources/constant.dart';
import 'package:radio_volare/resources/custom_MultiLineTextField.dart';
import 'package:radio_volare/resources/custom_actionButton.dart';
import 'package:radio_volare/resources/custom_dropDownButton.dart';
import 'package:radio_volare/resources/custom_headerContent.dart';
import 'package:radio_volare/resources/custom_headerStyle.dart';
import 'package:radio_volare/resources/custom_inputTextField.dart';

class AddBroadcastSchedulePage extends StatefulWidget {
  const AddBroadcastSchedulePage({Key? key}) : super(key: key);

  @override
  State<AddBroadcastSchedulePage> createState() =>
      _AddBroadcastSchedulePageState();
}

class _AddBroadcastSchedulePageState extends State<AddBroadcastSchedulePage> {
  String? programValue;
  final TextEditingController _firstEmployeeController =
      TextEditingController();
  final TextEditingController _secondEmployeeController =
      TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  String? dayValue;
  String? timeValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
                  //Form Content
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Program"),
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
                          Text("Petugas 1"),
                          CustomInputTextField(
                            controller: _firstEmployeeController,
                            hintText: "Masukkan Nama",
                          ),
                          Text("Petugas 2"),
                          CustomInputTextField(
                            controller: _secondEmployeeController,
                            hintText: "Masukkan Nama",
                          ),
                          Text("Hari"),
                          CustomDropDownButton(
                            hintText: Text("- Pilih Hari -"),
                            value: dayValue,
                            items: dayList,
                            onChanged: (dynamic newValue) {
                              setState(
                                () {
                                  dayValue = newValue!;
                                },
                              );
                            },
                          ),
                          Text("Jam"),
                          CustomDropDownButton(
                            hintText: Text("- Pilih Jam -"),
                            value: timeValue,
                            items: timeList,
                            onChanged: (dynamic newValue) {
                              setState(
                                () {
                                  timeValue = newValue!;
                                },
                              );
                            },
                          ),
                          Text("Keterangan"),
                          const SizedBox(
                            height: 6,
                          ),
                          CustomMultiLineTextField(
                            height: 150,
                            controller: _descriptionController,
                            hintText: "Masukkan Keterangan",
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          CustomActionButton(
                              onTap: () {},
                              text: "Simpan",
                              buttonColor: saveButtonColor,
                              textStyle: textStyleWithoutBold)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
