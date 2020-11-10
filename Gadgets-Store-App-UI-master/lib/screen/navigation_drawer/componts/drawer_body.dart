import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gadgets_store_app/constants/constants.dart';

class DrawerBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: red,
      body: Padding(
        padding: EdgeInsets.only(
          left: appPadding,
          top: appPadding * 2,
          bottom: appPadding * 3,
        ),
        child: Container(
          width: size.width * 0.45,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.clear,color: white,),
              Text('Xin chào,\nHoàng Anh',style: TextStyle(
                color: white,
                fontSize: 20,
              ),),
              Container(
                height: size.height * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){print("Trang chủ");},
                      child: Row(
                        children: [
                          Icon(Icons.home,color: yellow,),
                          SizedBox(width: 10,),
                          Text('Trang chủ',style: TextStyle(color: white),)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){print("Hồ sơ");},
                      child: Row(
                        children: [
                          Icon(Icons.person,color: yellow,),
                          SizedBox(width: 10,),
                          Text('Hồ sơ',style: TextStyle(color: white),)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){print("Số dư");},
                      child: Row(
                        children: [
                          Icon(Icons.local_atm,color: yellow,),
                          SizedBox(width: 10,),
                          Text('Số dư',style: TextStyle(color: white),)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){print("Giỏ hàng");},
                      child: Row(
                        children: [
                          Icon(Icons.shopping_basket,color: yellow,),
                          SizedBox(width: 10,),
                          Text('Giỏ hàng',style: TextStyle(color: white),)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){print("Yêu thích");},
                      child: Row(
                        children: [
                          Icon(Icons.favorite,color: yellow,),
                          SizedBox(width: 10,),
                          Text('Yêu thích',style: TextStyle(color: white),)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){print("Trợ giúp");},
                      child: Row(
                        children: [
                          Icon(Icons.help,color: yellow,),
                          SizedBox(width: 10,),
                          Text('Trợ giúp',style: TextStyle(color: white),)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){print("Cài đặt");},
                      child: Row(
                        children: [
                          Icon(Icons.settings,color: yellow,),
                          SizedBox(width: 10,),
                          Text('Cài đặt',style: TextStyle(color: white),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: white,),
              GestureDetector(
                onTap: (){
                  showDialog(
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
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.exit_to_app,color: yellow,),
                    SizedBox(width: 10,),
                    Text('Thoát',style: TextStyle(color: white),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
