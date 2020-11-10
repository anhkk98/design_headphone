import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gadgets_store_app/screen/home/components/background_image.dart';
import 'package:gadgets_store_app/screen/home/components/bottom_container.dart';
import 'package:gadgets_store_app/screen/home/components/custom_app_bar.dart';
import 'package:gadgets_store_app/screen/home/components/main_texts.dart';

class HomeScreen extends StatefulWidget {

  final Function drawerCallback;

  HomeScreen({@required this.drawerCallback});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: new Text(
          "Thoát chương trình",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: new Text("Bạn có chắc?"),
        actions: <Widget>[
          FlatButton(
            shape: StadiumBorder(),
            color: Colors.white,
            child: new Text(
              "Có",
              style: TextStyle(color: Colors.red),
            ),
            onPressed: () {
              exit(0);
            },
          ),
          FlatButton(
            shape: StadiumBorder(),
            color: Colors.white,
            child: new Text(
              "Không",
              style: TextStyle(color: Colors.blue),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    )) ??
        false;
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: Stack(
          children: [
            BackgroundImage(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomAppBar(widget.drawerCallback),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MainTexts(),
                    BottomContainer(),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
