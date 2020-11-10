import 'package:flutter/material.dart';
import 'package:gadgets_store_app/constants/constants.dart';
import 'package:gadgets_store_app/models/best_selling_product_model.dart';
import 'package:gadgets_store_app/models/popular_product_model.dart';

class ProductNameAndImages extends StatefulWidget {
  final PopularProductModel popularProductModel;

  ProductNameAndImages(this.popularProductModel);

  @override
  _ProductNameAndImagesState createState() => _ProductNameAndImagesState();
}

class _ProductNameAndImagesState extends State<ProductNameAndImages> {
  Widget _buildImages(
      BuildContext context, int index, List<String> listImagesUrl) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(
        top: appPadding / 2,
        bottom: appPadding / 2,
        left: appPadding / 1.5,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image(
          width: size.width * 0.45,
          fit: BoxFit.cover,
          image: AssetImage(listImagesUrl[index]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: appPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.popularProductModel.name,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.favorite,
                  color: red,
                )
              ],
            ),
          ),
          Container(
            height: size.height * 0.4,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: widget.popularProductModel.listImagesUrl.length,
              itemBuilder: (context, index) {
                return _buildImages(context, index,
                    widget.popularProductModel.listImagesUrl);
              },
            ),
          )
        ],
      ),
    );
  }
}
