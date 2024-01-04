import '../models/productsearch_item_model.dart';
import 'package:bonface_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductsearchItemWidget extends StatelessWidget {
  ProductsearchItemWidget(
    this.productsearchItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductsearchItemModel productsearchItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: productsearchItemModelObj?.longSleeveTshirt,
          height: 171.adaptSize,
          width: 171.adaptSize,
          radius: BorderRadius.circular(
            8.h,
          ),
        ),
        SizedBox(height: 11.v),
        Text(
          productsearchItemModelObj.longSleeveTShirt!,
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
