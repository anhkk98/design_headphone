import 'package:flutter/material.dart';
import 'package:gadgets_store_app/constants/constants.dart';

class MainTexts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('BỘ SƯU TẬP 2020',style: TextStyle(
            color: yellow,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),),
          SizedBox(height: 15,),
          Text('Shop Anh',style: TextStyle(
            color: white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 15,),
          Text('Chất lượng, uy tín số 1.',style: TextStyle(
            color: white,
          ),),
        ],
      ),
    );
  }
}
