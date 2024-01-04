import '../models/price_item_model.dart';
import 'package:bonface_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PriceItemWidget extends StatelessWidget {
  PriceItemWidget(
    this.priceItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PriceItemModel priceItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: priceItemModelObj?.circleImage,
          height: 56.adaptSize,
          width: 56.adaptSize,
          radius: BorderRadius.circular(
            28.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 8.v,
            bottom: 8.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                priceItemModelObj.price!,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 8.v),
              Text(
                priceItemModelObj.cottonBlackDress!,
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
