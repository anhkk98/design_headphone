import 'package:flutter/material.dart';
import 'package:gadgets_store_app/models/popular_product_model.dart';
import 'package:gadgets_store_app/screen/details_selling/componts/custom_app_bar.dart';
import 'package:gadgets_store_app/screen/details_selling/componts/product_features.dart';
import 'package:gadgets_store_app/screen/details_selling/componts/product_name_and_images.dart';


class DetailsSelling extends StatefulWidget {

  final PopularProductModel popularProductModel;

  const DetailsSelling({Key key, this.popularProductModel}) : super(key: key);

  @override
  _DetailsSellingState createState() => _DetailsSellingState();
}

class _DetailsSellingState extends State<DetailsSelling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          ProductNameAndImages(widget.popularProductModel),
          ProductFeatures(widget.popularProductModel),
        ],
      ),
    );
  }
}
