import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:gadgets_store_app/constants/constants.dart';
import 'package:gadgets_store_app/models/best_selling_product_model.dart';
import 'package:gadgets_store_app/models/popular_product_model.dart';
import 'package:gadgets_store_app/widgest/star_rating.dart';

class ProductFeatures extends StatefulWidget {
  final PopularProductModel popularProductModel;

  ProductFeatures(this.popularProductModel);

  @override
  _ProductFeaturesState createState() => _ProductFeaturesState();
}

class _ProductFeaturesState extends State<ProductFeatures> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: appPadding / 2),
        child: Container(
          decoration: BoxDecoration(
            color: brown,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(40),
            ),
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Features',
                    style: TextStyle(
                      color: white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      StarRating(widget.popularProductModel.rating),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        widget.popularProductModel.rating.toString(),
                        style: TextStyle(color: white, fontSize: 17),
                      )
                    ],
                  )
                ],
              ),
              Text(
                widget.popularProductModel.maxDescription,
                style: TextStyle(
                  color: white,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.2,
                    height: size.height * 0.12,
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.battery_charging_full,
                          color: yellow,
                          size: 30,
                        ),
                        Text(
                          '${widget.popularProductModel.battery}h',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.2,
                    height: size.height * 0.12,
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.whatshot,
                          color: yellow,
                          size: 30,
                        ),
                        Text(
                          '${widget.popularProductModel.input}m',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.2,
                    height: size.height * 0.12,
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.bluetooth,
                          color: yellow,
                          size: 30,
                        ),
                        Text(
                          '${widget.popularProductModel.bluetooth}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.2,
                    height: size.height * 0.12,
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.volume_up,
                          color: yellow,
                          size: 30,
                        ),
                        Text(
                          '${widget.popularProductModel.sound}d',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: appPadding / 2),
                      height: size.height * 0.1,
                      decoration: BoxDecoration(
                        color: red,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('\$',style: TextStyle(
                            color: white,
                            fontSize: 16
                          ),),
                          Text('${widget.popularProductModel.price}',style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w600,
                              fontSize: 26
                          ),),
                          SizedBox(width: 10,),
                          Text('+ Thêm vào giỏ hàng',style: TextStyle(
                              color: yellow,
                              fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.2,
                    height: size.height * 0.1,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.shopping_basket,
                      size: 40,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
