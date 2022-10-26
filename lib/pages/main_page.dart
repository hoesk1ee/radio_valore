import 'package:flutter/material.dart';
import 'package:radio_volare/resources/custom_menuButton.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 18.0, top: 18, bottom: 18),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      child: Container(
                        height: 32,
                        width: 175,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(18),
                            bottomRight: Radius.circular(18),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Halo, Leonardo",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      child: Icon(Icons.group),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/2,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 18.0, top: 28, bottom: 18),
                    child: GridView.count(
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      crossAxisCount: 2,
                      children: [
                        CustomMenuButton(
                          icons: Icons.developer_board_outlined,
                          text: "Papan Pesan",
                        ),
                        CustomMenuButton(
                          icons: Icons.radio,
                          text: "Siaran",
                        ),
                        CustomMenuButton(
                          icons: Icons.topic_outlined,
                          text: "Topik",
                        ),
                        CustomMenuButton(
                          icons: Icons.developer_board_outlined,
                          text: "ROTW",
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Pengumuman"),
                      SizedBox(height: 18,),
                      SizedBox(
                        height: 75,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 18),
                              height: 75,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Nama : Awang"),
                                    Text("Tanggal : 26/10/22")
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 18),
                              height: 75,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Nama : Awang"),
                                    Text("Tanggal : 26/10/22")
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 18),
                              height: 75,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Nama : Awang"),
                                    Text("Tanggal : 26/10/22")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Container(
//                       height: 75,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         color: Colors.blueAccent,
//                         borderRadius: BorderRadius.circular(18),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(12.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text("Nama : Awang"),
//                             Text("Tanggal : 26/10/22")
//                           ],
//                         ),
//                       ),
//                     ),

//showDialog(
//                                   context: context,
//                                   builder: (BuildContext context) {
//                                     return AlertDialog(
//                                       scrollable: true,
//                                       title: const Center(
//                                         child: Text("Pengumuman"),
//                                       ),
//                                       content: Column(
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: const [
//                                           Text("Nama : Leonard"),
//                                           Text("24/10/2022"),
//                                           Text("Pesan : AEBAUEBAWEONAWEBAWENAWEBWAIUBEUIAWN WAEUIAWNEIWANEIAWNE ANEAWOEAWEOAWEIOAOEAWOEOAWEOIAWEOAWOEWAOIEWOAIHEIOAWHEOIAHWOEIHIOEWHADASDAWEADAWDASDWADSDWASDWADWASDWASDWADASDAWDAWDWADASDWAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA UNAWEUNAWENWAENAWU NWAUIENAWUNEUAIWN")
//                                         ],
//                                       ),
//                                       actions: [
//                                         ElevatedButton(
//                                           onPressed: () {
//                                             Navigator.pop(context);
//                                           },
//                                           child: const Text("Back"),
//                                         )
//                                       ],
//                                     );
//                                   },
//                                 );
