import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gadgets_store_app/constants/constants.dart';

class CustomAppBar extends StatefulWidget {
  final Function drawerCallback;

  CustomAppBar(this.drawerCallback);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  List countries = [];
  List filterCountries = [];
  bool isSearching = false;
  @override
  void initState() {
    // getData().then((data) {
    //   setState(() {
    //     countries = filterCountries = data;
    //   });
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(appPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: widget.drawerCallback,
              child: Icon(
                Icons.short_text,
                color: white,
                size: 25,
              ),
            ),
            RichText(
                text: TextSpan(
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                          text: '.',
                          style: TextStyle(
                            color: red,
                          )),
                      TextSpan(
                          text: 'Anh',
                          style: TextStyle(
                            color: yellow,
                          )),
                      TextSpan(
                          text: '.',
                          style: TextStyle(
                            color: red,
                          )),
                    ])),
            IconButton(
                icon: Icon(Icons.search,color: Colors.white,),
                onPressed: () {
                })
          ],
        ),
      ),
    );
  }
}
