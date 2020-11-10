import 'package:flutter/material.dart';
import 'package:gadgets_store_app/constants/constants.dart';
import 'package:gadgets_store_app/screen/home/components/best_selling_products.dart';
import 'package:gadgets_store_app/screen/home/components/popular_products.dart';

import '../../../constants/constants.dart';

class BottomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.5,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: appPadding),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: appPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: appPadding,left: 15.0),
                    child: Text('Phổ biến',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),),
                  ),
                  // Text('09/11 - 20/12',style: TextStyle(
                  //   fontWeight: FontWeight.bold,
                  //   fontSize: 15,
                  // ),),
                ],
              ),
            ),
            PopularProducts(),
            Padding(
              padding: EdgeInsets.only(right: 15.0,left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Siêu giảm giá',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),),
                  Text('09/11 - 20/11',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),),
                ],
              ),
            ),
            BestSellingProducts(),
          ],
        ),
      ),
    );
  }
}
