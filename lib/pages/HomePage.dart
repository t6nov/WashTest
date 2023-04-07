import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  /*
  final String id;
  final String title;
  final String subtitle;
  final String imageUrl;

  Washes(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.imageUrl});
      */
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: Drawer(),
        appBar: AppBar(
          title: Text(
            "الرئيسية",
            style: TextStyle(fontSize: 27, fontFamily: 'Vazirmatn'),
          ),
        ),
        body: InkWell(
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 7,
            margin: EdgeInsets.all(10),
            child: Column(children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    //  child: Image.network(),
                  ),
                ],
              )
            ]),
          ),
        ));
  }
}
